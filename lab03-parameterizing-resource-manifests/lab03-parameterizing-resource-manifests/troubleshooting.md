# Troubleshooting

### Issue 1: Syntax error near unexpected token '|'
**Cause:** Pipe symbol used inside command substitution without proper quoting.
**Fix:** Remove unnecessary '|' or wrap multi-line markdown code blocks properly.

### Issue 2: Permission denied
**Fix:** Added `chmod +x *.sh` before running scripts.

### Issue 3: envsubst not found
**Fix:** Install gettext-base (Ubuntu) or gettext (RHEL/CentOS).