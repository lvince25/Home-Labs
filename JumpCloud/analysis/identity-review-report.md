# Identity Governance — JumpCloud Review Report

**Reviewer:** Vincent (view-only)
**Date:** `2025-11-28`

## 1. Executive Summary

This Identity Governance review provides an assessment of the JumpCloud tenant based on view-only administrative access. Overall, the environment shows partial implementation of identity and device governance, with several foundational security controls configured but not consistently enforced. Desktop device trust is enabled, but no devices are currently enrolled, limiting the effectiveness of Zero Trust enforcement. SaaS application discovery is active and reveals significant gaps in application lifecycle management, including 922 former employee accounts and 16 shared accounts. There is evidence of governance intent but also clear opportunities to improve identity lifecycle processes, device onboarding, and application governance.

## 2. Scope & Methodology

* Access level: **View-only admin**
* Areas inspected: Users, Groups, Policies, MFA, Devices, Device Trust, Applications, SaaS Management, Alerts
* Artifacts used: screenshots (see `/screenshots/`)

## 3. Findings

### 3.1 Users

* Total users observed: **19 active users**
* Observations: Inconsistent naming conventions; privileged accounts not clearly identified.
* Evidence: `screenshots/02_users_list.png`

### 3.2 Groups & Privileged Access

* Groups exist but are minimally used; no structured RBAC model.
* Evidence: `screenshots/04_groups_list.png`, `screenshots/05_group_detail.png`

### 3.3 Policies (Password / Conditional)

* Password policy configured with strong requirements.
* Conditional Access policy present but not fully implemented.
* Evidence: `screenshots/06_password_policy.png`, `screenshots/07_conditional_policy.png`

### 3.4 MFA

* MFA is available but **not enforced tenant-wide**.
* Evidence: `screenshots/08_mfa_settings.png`

### 3.5 Devices & Device Trust

* **0 devices enrolled** → No endpoint governance.
* Device Trust:

  * Desktop: Configured
  * Android/iOS: Not configured
* Evidence: `screenshots/09_devices_empty.png`, `screenshots/14_device_trust.png`

### 3.6 Applications / SaaS Management

* Total SaaS Apps: 31
* Approved: 4, Unapproved: 2, Shadow Accounts: 3, Shared Accounts: 16
* **Former employee accounts: 922** (critical finding)
* Evidence: `screenshots/10_applications_list.png`, `screenshots/15_saas_management.png`

### 3.7 Insights & Alerts

* Policy Application Failure alerts
* Device Offline Monitoring alerts
* Evidence: `screenshots/11_alerts_overview.png`

### 3.8 Authentication Methods (LDAP / RADIUS / Password Manager)

* Legacy authentication protocols visible (LDAP, RADIUS)
* Password Manager present but unclear usage
* Evidence: `screenshots/12_user_authentication_overview.png`

### 3.9 Device Commands

* Command capability available but unusable due to no device enrollment.
* Evidence: `screenshots/13_device_commands.png`

## 4. Risk Rating

**HIGH RISK** due to:

* 922 former employee accounts
* No MFA enforcement
* No devices enrolled
* Mixed/legacy authentication
* Shared & shadow accounts
* Conditional access gaps

## 5. Recommendations (Prioritized)

1. Remove or disable 922 former employee accounts immediately.
2. Enforce MFA for all users.
3. Implement SCIM or automated deprovisioning.
4. Standardize naming conventions.
5. Create role-based groups and enforce RBAC.
6. Migrate shared accounts to individual identities.
7. Approve or retire unapproved SaaS apps.
8. Investigate and resolve shadow accounts.
9. Onboard all corporate devices into JumpCloud.
10. Enable Device Trust for Android/iOS.
11. Fix policy application failures and validate enforcement.
12. Strengthen conditional access rules.
13. Monitor idle/inactive devices.
14. Conduct quarterly identity & SaaS reviews.

## 6. Appendix

* Full screenshot set located in `/screenshots/`
* Sensitive data redacted where appropriate
* Findings limited to view-only access

