package com.android.server.sepunion.eventdelegator;

import android.app.PendingIntent;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.sepunion.SemDeviceInfoManagerService;
import com.samsung.android.sepunion.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class UnionEventListenerItem {
    public static final String TAG = SemDeviceInfoManagerService.TAG;
    public final HashMap mUnionEventComponentsWithConditions = new HashMap();

    public boolean isEmpty() {
        return this.mUnionEventComponentsWithConditions.isEmpty();
    }

    public boolean add(String str, PendingIntent pendingIntent) {
        return add(str, new PendingIntentWithConditions(pendingIntent, 0, null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0094, code lost:
    
        r6 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean add(java.lang.String r7, com.android.server.sepunion.eventdelegator.PendingIntentWithConditions r8) {
        /*
            r6 = this;
            java.util.HashMap r0 = r6.mUnionEventComponentsWithConditions
            java.lang.Object r0 = r0.get(r7)
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            r1 = 1
            if (r0 != 0) goto L33
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r0.add(r8)
            java.lang.String r2 = com.android.server.sepunion.eventdelegator.UnionEventListenerItem.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "PendingIntentWithConditions added f="
            r3.append(r4)
            int r8 = r8.getFlag()
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            com.samsung.android.sepunion.Log.d(r2, r8)
            java.util.HashMap r6 = r6.mUnionEventComponentsWithConditions
            r6.put(r7, r0)
            return r1
        L33:
            android.app.PendingIntent r6 = r8.getPendingIntent()
            android.content.Intent r6 = r6.getIntent()
            java.util.Iterator r2 = r0.iterator()
        L3f:
            boolean r3 = r2.hasNext()
            r4 = 0
            if (r3 == 0) goto L94
            java.lang.Object r3 = r2.next()
            com.android.server.sepunion.eventdelegator.PendingIntentWithConditions r3 = (com.android.server.sepunion.eventdelegator.PendingIntentWithConditions) r3
            android.app.PendingIntent r5 = r3.getPendingIntent()
            android.content.Intent r5 = r5.getIntent()
            boolean r5 = r5.filterEquals(r6)
            if (r5 == 0) goto L3f
            android.app.PendingIntent r6 = r3.getPendingIntent()
            android.content.IIntentSender r6 = r6.getTarget()
            android.app.PendingIntent r2 = r8.getPendingIntent()
            android.content.IIntentSender r2 = r2.getTarget()
            if (r6 != r2) goto L83
            java.lang.String r6 = com.android.server.sepunion.eventdelegator.UnionEventListenerItem.TAG
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Same PendingIntent is in "
            r8.append(r0)
            r8.append(r7)
            java.lang.String r7 = r8.toString()
            com.samsung.android.sepunion.Log.d(r6, r7)
            return r4
        L83:
            boolean r6 = r0.remove(r3)
            if (r6 == 0) goto L92
            java.lang.String r6 = com.android.server.sepunion.eventdelegator.UnionEventListenerItem.TAG
            java.lang.String r7 = "removed before add"
            com.samsung.android.sepunion.Log.d(r6, r7)
            goto L94
        L92:
            r6 = r4
            goto L95
        L94:
            r6 = r1
        L95:
            if (r6 == 0) goto Lb5
            java.lang.String r6 = com.android.server.sepunion.eventdelegator.UnionEventListenerItem.TAG
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = "PendingIntentWithConditions replaced f="
            r7.append(r2)
            int r2 = r8.getFlag()
            r7.append(r2)
            java.lang.String r7 = r7.toString()
            com.samsung.android.sepunion.Log.d(r6, r7)
            r0.add(r8)
            return r1
        Lb5:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.sepunion.eventdelegator.UnionEventListenerItem.add(java.lang.String, com.android.server.sepunion.eventdelegator.PendingIntentWithConditions):boolean");
    }

    public boolean remove(String str, PendingIntent pendingIntent) {
        return remove(str, new PendingIntentWithConditions(pendingIntent, 0, null));
    }

    public boolean remove(String str, PendingIntentWithConditions pendingIntentWithConditions) {
        if (pendingIntentWithConditions == null) {
            Log.d(TAG, "pending intent is null");
            return false;
        }
        ArrayList arrayList = (ArrayList) this.mUnionEventComponentsWithConditions.get(str);
        if (arrayList == null) {
            Log.d(TAG, "No item for the calling package in the component list.");
            return false;
        }
        boolean remove = arrayList.size() > 0 ? arrayList.remove(pendingIntentWithConditions) : false;
        if (arrayList.size() == 0) {
            this.mUnionEventComponentsWithConditions.remove(str);
        }
        return remove;
    }

    public boolean clear(String str) {
        return ((ArrayList) this.mUnionEventComponentsWithConditions.remove(str)) != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Number of registered components = ");
        sb.append(this.mUnionEventComponentsWithConditions.size());
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        for (Map.Entry entry : this.mUnionEventComponentsWithConditions.entrySet()) {
            String str = (String) entry.getKey();
            ArrayList arrayList = (ArrayList) entry.getValue();
            sb.append("  - Package : ");
            sb.append(str);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            sb.append("  - Number of PendingIntentWithConditions = ");
            sb.append(arrayList.size());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                PendingIntentWithConditions pendingIntentWithConditions = (PendingIntentWithConditions) it.next();
                sb.append("\n     - ");
                sb.append(pendingIntentWithConditions.getPendingIntent() + ", ");
                sb.append(pendingIntentWithConditions.getFlag() + ", ");
                sb.append(pendingIntentWithConditions.getConditions());
            }
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        }
        return sb.toString();
    }

    public String toStringForDump(String str) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : this.mUnionEventComponentsWithConditions.entrySet()) {
            String str2 = (String) entry.getKey();
            ArrayList arrayList = (ArrayList) entry.getValue();
            sb.append(str + "  Package: ");
            sb.append(str2 + " (" + arrayList.size() + ")");
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                PendingIntentWithConditions pendingIntentWithConditions = (PendingIntentWithConditions) it.next();
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                sb.append(str + "      ");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(pendingIntentWithConditions.getPendingIntent());
                sb2.append(", ");
                sb.append(sb2.toString());
                sb.append(pendingIntentWithConditions.getFlag() + ", ");
                sb.append(pendingIntentWithConditions.getConditions());
            }
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        }
        return sb.toString();
    }
}
