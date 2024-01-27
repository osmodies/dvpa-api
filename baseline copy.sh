cat > baseline.json <<'EOF'
{
  "results": [
    {
      "code": "99         cur = db.connection.cursor()\n100         cur.execute(f\"UPDATE `users` SET `email` = '{email}', `full_name` = '{full_name}', `phone_number` = '{phone_number}', `dob` = '{dob}' WHERE `users`.`id` = {request.args.get('uid')}\")\n101         db.connection.commit()\n",
      "col_offset": 20,
      "filename": "./flaskblog/blogapi/dashboard.py",
      "issue_confidence": "MEDIUM",
      "issue_cwe": {
        "id": 89,
        "link": "https://cwe.mitre.org/data/definitions/89.html"
      },
      "issue_severity": "MEDIUM",
      "issue_text": "Possible SQL injection vector through string-based query construction.",
      "line_number": 100,
      "line_range": [
        100
      ],
      "more_info": "https://bandit.readthedocs.io/en/1.7.4/plugins/b608_hardcoded_sql_expressions.html",
      "test_id": "B608",
      "test_name": "hardcoded_sql_expressions"
    }
  ]
}
EOF