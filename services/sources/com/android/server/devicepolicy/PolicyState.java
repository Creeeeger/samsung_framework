package com.android.server.devicepolicy;

import android.app.admin.PolicyValue;
import android.util.IndentingPrintWriter;
import com.android.modules.utils.TypedXmlSerializer;
import java.util.LinkedHashMap;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class PolicyState {
    public PolicyValue mCurrentResolvedPolicy;
    public final LinkedHashMap mPoliciesSetByAdmins;
    public final PolicyDefinition mPolicyDefinition;

    public PolicyState(PolicyDefinition policyDefinition) {
        this.mPoliciesSetByAdmins = new LinkedHashMap();
        Objects.requireNonNull(policyDefinition);
        this.mPolicyDefinition = policyDefinition;
    }

    public PolicyState(PolicyDefinition policyDefinition, LinkedHashMap linkedHashMap, PolicyValue policyValue) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        this.mPoliciesSetByAdmins = linkedHashMap2;
        Objects.requireNonNull(policyDefinition);
        Objects.requireNonNull(linkedHashMap);
        this.mPolicyDefinition = policyDefinition;
        linkedHashMap2.putAll(linkedHashMap);
        this.mCurrentResolvedPolicy = policyValue;
    }

    public boolean addPolicy(EnforcingAdmin enforcingAdmin, PolicyValue policyValue) {
        Objects.requireNonNull(enforcingAdmin);
        this.mPoliciesSetByAdmins.remove(enforcingAdmin);
        this.mPoliciesSetByAdmins.put(enforcingAdmin, policyValue);
        return resolvePolicy();
    }

    public boolean addPolicy(EnforcingAdmin enforcingAdmin, PolicyValue policyValue, LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = this.mPoliciesSetByAdmins;
        Objects.requireNonNull(enforcingAdmin);
        linkedHashMap2.put(enforcingAdmin, policyValue);
        return resolvePolicy(linkedHashMap);
    }

    public boolean removePolicy(EnforcingAdmin enforcingAdmin) {
        Objects.requireNonNull(enforcingAdmin);
        if (this.mPoliciesSetByAdmins.remove(enforcingAdmin) == null) {
            return false;
        }
        return resolvePolicy();
    }

    public boolean removePolicy(EnforcingAdmin enforcingAdmin, LinkedHashMap linkedHashMap) {
        Objects.requireNonNull(enforcingAdmin);
        if (this.mPoliciesSetByAdmins.remove(enforcingAdmin) == null) {
            return false;
        }
        return resolvePolicy(linkedHashMap);
    }

    public boolean resolvePolicy(LinkedHashMap linkedHashMap) {
        if (this.mPolicyDefinition.isNonCoexistablePolicy()) {
            return false;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap);
        linkedHashMap2.putAll(this.mPoliciesSetByAdmins);
        PolicyValue resolvePolicy = this.mPolicyDefinition.resolvePolicy(linkedHashMap2);
        boolean z = !Objects.equals(resolvePolicy, this.mCurrentResolvedPolicy);
        this.mCurrentResolvedPolicy = resolvePolicy;
        return z;
    }

    public LinkedHashMap getPoliciesSetByAdmins() {
        return new LinkedHashMap(this.mPoliciesSetByAdmins);
    }

    public final boolean resolvePolicy() {
        if (this.mPolicyDefinition.isNonCoexistablePolicy()) {
            return false;
        }
        PolicyValue resolvePolicy = this.mPolicyDefinition.resolvePolicy(this.mPoliciesSetByAdmins);
        boolean z = !Objects.equals(resolvePolicy, this.mCurrentResolvedPolicy);
        this.mCurrentResolvedPolicy = resolvePolicy;
        return z;
    }

    public PolicyValue getCurrentResolvedPolicy() {
        return this.mCurrentResolvedPolicy;
    }

    public android.app.admin.PolicyState getParcelablePolicyState() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (EnforcingAdmin enforcingAdmin : this.mPoliciesSetByAdmins.keySet()) {
            linkedHashMap.put(enforcingAdmin.getParcelableAdmin(), (PolicyValue) this.mPoliciesSetByAdmins.get(enforcingAdmin));
        }
        return new android.app.admin.PolicyState(linkedHashMap, this.mCurrentResolvedPolicy, this.mPolicyDefinition.getResolutionMechanism().mo5119getParcelableResolutionMechanism());
    }

    public String toString() {
        return "\nPolicyKey - " + this.mPolicyDefinition.getPolicyKey() + "\nmPolicyDefinition= \n\t" + this.mPolicyDefinition + "\nmPoliciesSetByAdmins= \n\t" + this.mPoliciesSetByAdmins + ",\nmCurrentResolvedPolicy= \n\t" + this.mCurrentResolvedPolicy + " }";
    }

    public void dump(IndentingPrintWriter indentingPrintWriter) {
        indentingPrintWriter.println(this.mPolicyDefinition.getPolicyKey());
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println("Per-admin Policy");
        indentingPrintWriter.increaseIndent();
        if (this.mPoliciesSetByAdmins.size() == 0) {
            indentingPrintWriter.println("null");
        } else {
            for (EnforcingAdmin enforcingAdmin : this.mPoliciesSetByAdmins.keySet()) {
                indentingPrintWriter.println(enforcingAdmin);
                indentingPrintWriter.increaseIndent();
                indentingPrintWriter.println(this.mPoliciesSetByAdmins.get(enforcingAdmin));
                indentingPrintWriter.decreaseIndent();
            }
        }
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.printf("Resolved Policy (%s):\n", new Object[]{this.mPolicyDefinition.getResolutionMechanism().getClass().getSimpleName()});
        indentingPrintWriter.increaseIndent();
        indentingPrintWriter.println(this.mCurrentResolvedPolicy);
        indentingPrintWriter.decreaseIndent();
        indentingPrintWriter.decreaseIndent();
    }

    public void saveToXml(TypedXmlSerializer typedXmlSerializer) {
        typedXmlSerializer.startTag((String) null, "policy-definition-entry");
        this.mPolicyDefinition.saveToXml(typedXmlSerializer);
        typedXmlSerializer.endTag((String) null, "policy-definition-entry");
        if (this.mCurrentResolvedPolicy != null) {
            typedXmlSerializer.startTag((String) null, "resolved-value-entry");
            this.mPolicyDefinition.savePolicyValueToXml(typedXmlSerializer, this.mCurrentResolvedPolicy.getValue());
            typedXmlSerializer.endTag((String) null, "resolved-value-entry");
        }
        for (EnforcingAdmin enforcingAdmin : this.mPoliciesSetByAdmins.keySet()) {
            typedXmlSerializer.startTag((String) null, "admin-policy-entry");
            if (this.mPoliciesSetByAdmins.get(enforcingAdmin) != null) {
                typedXmlSerializer.startTag((String) null, "policy-value-entry");
                this.mPolicyDefinition.savePolicyValueToXml(typedXmlSerializer, ((PolicyValue) this.mPoliciesSetByAdmins.get(enforcingAdmin)).getValue());
                typedXmlSerializer.endTag((String) null, "policy-value-entry");
            }
            typedXmlSerializer.startTag((String) null, "enforcing-admin-entry");
            enforcingAdmin.saveToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "enforcing-admin-entry");
            typedXmlSerializer.endTag((String) null, "admin-policy-entry");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0072 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.devicepolicy.PolicyState readFromXml(com.android.modules.utils.TypedXmlPullParser r11) {
        /*
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            int r1 = r11.getDepth()
            r2 = 0
            r3 = r2
            r4 = r3
        Lc:
            boolean r5 = com.android.internal.util.XmlUtils.nextElementWithin(r11, r1)
            java.lang.String r6 = "PolicyState"
            if (r5 == 0) goto Lca
            java.lang.String r5 = r11.getName()
            r5.hashCode()
            int r7 = r5.hashCode()
            r8 = -1
            switch(r7) {
                case 394982067: goto L3b;
                case 695389653: goto L30;
                case 829992641: goto L24;
                default: goto L23;
            }
        L23:
            goto L46
        L24:
            java.lang.String r7 = "resolved-value-entry"
            boolean r7 = r5.equals(r7)
            if (r7 != 0) goto L2e
            goto L46
        L2e:
            r8 = 2
            goto L46
        L30:
            java.lang.String r7 = "admin-policy-entry"
            boolean r7 = r5.equals(r7)
            if (r7 != 0) goto L39
            goto L46
        L39:
            r8 = 1
            goto L46
        L3b:
            java.lang.String r7 = "policy-definition-entry"
            boolean r7 = r5.equals(r7)
            if (r7 != 0) goto L45
            goto L46
        L45:
            r8 = 0
        L46:
            switch(r8) {
                case 0: goto Lbd;
                case 1: goto L72;
                case 2: goto L5e;
                default: goto L49;
            }
        L49:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Unknown tag: "
            r7.append(r8)
            r7.append(r5)
            java.lang.String r5 = r7.toString()
            com.android.server.utils.Slogf.wtf(r6, r5)
            goto Lc
        L5e:
            if (r3 != 0) goto L66
            java.lang.String r5 = "Error Parsing TAG_RESOLVED_VALUE_ENTRY, policyDefinition is null"
            com.android.server.utils.Slogf.wtf(r6, r5)
            goto Lc
        L66:
            android.app.admin.PolicyValue r4 = r3.readPolicyValueFromXml(r11)
            if (r4 != 0) goto Lc
            java.lang.String r5 = "Error Parsing TAG_RESOLVED_VALUE_ENTRY, currentResolvedPolicy is null"
            com.android.server.utils.Slogf.wtf(r6, r5)
            goto Lc
        L72:
            int r5 = r11.getDepth()
            r7 = r2
            r8 = r7
        L78:
            boolean r9 = com.android.internal.util.XmlUtils.nextElementWithin(r11, r5)
            if (r9 == 0) goto Laf
            java.lang.String r9 = r11.getName()
            r9.hashCode()
            java.lang.String r10 = "enforcing-admin-entry"
            boolean r10 = r9.equals(r10)
            if (r10 != 0) goto La3
            java.lang.String r10 = "policy-value-entry"
            boolean r9 = r9.equals(r10)
            if (r9 != 0) goto L97
            goto L78
        L97:
            android.app.admin.PolicyValue r8 = r3.readPolicyValueFromXml(r11)
            if (r8 != 0) goto L78
            java.lang.String r9 = "Error Parsing TAG_POLICY_VALUE_ENTRY, PolicyValue is null"
            com.android.server.utils.Slogf.wtf(r6, r9)
            goto L78
        La3:
            com.android.server.devicepolicy.EnforcingAdmin r7 = com.android.server.devicepolicy.EnforcingAdmin.readFromXml(r11)
            if (r7 != 0) goto L78
            java.lang.String r9 = "Error Parsing TAG_ENFORCING_ADMIN_ENTRY, EnforcingAdmin is null"
            com.android.server.utils.Slogf.wtf(r6, r9)
            goto L78
        Laf:
            if (r7 == 0) goto Lb6
            r0.put(r7, r8)
            goto Lc
        Lb6:
            java.lang.String r5 = "Error Parsing TAG_ADMIN_POLICY_ENTRY, EnforcingAdmin is null"
            com.android.server.utils.Slogf.wtf(r6, r5)
            goto Lc
        Lbd:
            com.android.server.devicepolicy.PolicyDefinition r3 = com.android.server.devicepolicy.PolicyDefinition.readFromXml(r11)
            if (r3 != 0) goto Lc
            java.lang.String r5 = "Error Parsing TAG_POLICY_DEFINITION_ENTRY, PolicyDefinition is null"
            com.android.server.utils.Slogf.wtf(r6, r5)
            goto Lc
        Lca:
            if (r3 == 0) goto Ld2
            com.android.server.devicepolicy.PolicyState r11 = new com.android.server.devicepolicy.PolicyState
            r11.<init>(r3, r0, r4)
            return r11
        Ld2:
            java.lang.String r11 = "Error parsing policyState, policyDefinition is null"
            com.android.server.utils.Slogf.wtf(r6, r11)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.devicepolicy.PolicyState.readFromXml(com.android.modules.utils.TypedXmlPullParser):com.android.server.devicepolicy.PolicyState");
    }

    public PolicyDefinition getPolicyDefinition() {
        return this.mPolicyDefinition;
    }
}
