cat > baseline.json <<'EOF'
{
  "results": [
    {
      "code": "132         cur.execute(\n133             f\"INSERT INTO posts (`body`, `slug`, `author`, `title`) VALUES (%s, %s, %s, %s)\",\n134             [body, slug, claim.get(\"id\"), title])\n",

      "col_offset": 12,
      "filename": "./flaskblog/blogapi/dashboard.py",
      "issue_confidence": "MEDIUM",
      "issue_cwe": {
        "id": 89,
        "link": "https://cwe.mitre.org/data/definitions/89.html"
      },
      "issue_severity": "MEDIUM",
      "issue_text": "Possible SQL injection vector through string-based query construction.",

      "line_number": 133,
      "line_range": [
        133

      ],
      "more_info": "https://bandit.readthedocs.io/en/1.7.4/plugins/b608_hardcoded_sql_expressions.html",
      "test_id": "B608",
      "test_name": "hardcoded_sql_expressions"

    }
  ]
}
EOF