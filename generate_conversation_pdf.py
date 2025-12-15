from __future__ import annotations

from datetime import datetime

from reportlab.lib.pagesizes import LETTER
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import inch
from reportlab.platypus import Paragraph, SimpleDocTemplate, Spacer


def build_pdf(output_path: str) -> None:
    styles = getSampleStyleSheet()

    title_style = ParagraphStyle(
        name="Title",
        parent=styles["Title"],
        fontSize=18,
        leading=22,
        spaceAfter=12,
    )

    meta_style = ParagraphStyle(
        name="Meta",
        parent=styles["BodyText"],
        fontSize=9.5,
        leading=12,
        textColor="#444444",
        spaceAfter=10,
    )

    role_style = ParagraphStyle(
        name="Role",
        parent=styles["BodyText"],
        fontSize=11,
        leading=14,
        spaceAfter=8,
    )

    block_style = ParagraphStyle(
        name="Block",
        parent=styles["BodyText"],
        fontSize=11,
        leading=15,
        spaceAfter=10,
    )

    # Conversation content (compiled from this chat)
    convo = [
        (
            "User",
            "If I have a PHP website that's basically a school registration system, and I want to rewrite the code from PHP HTML JS to C# so that it can be its own dedicated program, and the users in the school will only rely on the server to use the database hosted on it nothing more",
        ),
        (
            "Assistant",
            "Yes—you can rewrite it in C#, but the key decision is what “dedicated program” means and what you allow the client to do. "
            "If users should only rely on the server to use the database, the safest/standard approach is: "
            "Server: C# ASP.NET Core Web API (only thing that talks to the database); "
            "Client app: C# desktop app (WPF or WinForms) that talks to the API over HTTPS. "
            "Avoid having the desktop client connect directly to the DB; use an API to keep credentials and business rules centralized. "
            "Migration steps: inventory current features, stabilize the data model, build the ASP.NET Core backend (auth + endpoints), build the desktop client, then run in parallel and cut over.",
        ),
        (
            "User",
            "It is windows only yes, no need for cross platform, and around 100 teachers will be using the program, and MySQL is the db i will use",
        ),
        (
            "Assistant",
            "Given Windows-only, ~100 teachers, and MySQL, the clean target is: Client: C# WPF desktop app; "
            "Server: ASP.NET Core Web API; DB: MySQL on the server; only the API can access MySQL. "
            "Recommended stack: .NET 8, EF Core + MySQL provider (or Dapper), JWT auth + roles, host on Windows Server via IIS (or service + reverse proxy). "
            "Flow: WPF logs in, gets token, calls endpoints; API enforces permissions and reads/writes MySQL.",
        ),
        ("User", "Can you compile our conversation into a pdf?"),
        (
            "Assistant",
            "Yes—this PDF compiles the conversation (your questions + my answers) into a single document.",
        ),
    ]

    doc = SimpleDocTemplate(
        output_path,
        pagesize=LETTER,
        leftMargin=0.9 * inch,
        rightMargin=0.9 * inch,
        topMargin=0.9 * inch,
        bottomMargin=0.9 * inch,
        title="School Registration System Migration (Conversation)",
        author="ChatGPT",
    )

    story = []
    story.append(Paragraph("Conversation: PHP school registration system → C# (WPF + ASP.NET Core)", title_style))

    generated = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    story.append(Paragraph(f"Generated: {generated}", meta_style))
    story.append(Paragraph("Compiled transcript (lightly formatted for readability).", meta_style))
    story.append(Spacer(1, 6))

    for role, text in convo:
        story.append(Paragraph(f"<b>{role}:</b>", role_style))
        # Escape ampersands to avoid ReportLab XML parsing issues
        safe_text = (
            text.replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\n", "<br/>")
        )
        story.append(Paragraph(safe_text, block_style))
        story.append(Spacer(1, 4))

    doc.build(story)


if __name__ == "__main__":
    build_pdf("/workspace/conversation.pdf")
