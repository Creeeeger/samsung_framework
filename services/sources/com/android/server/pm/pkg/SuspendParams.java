package com.android.server.pm.pkg;

import android.content.pm.SuspendDialogInfo;
import android.os.BaseBundle;
import android.os.PersistableBundle;
import android.util.Slog;
import com.android.modules.utils.TypedXmlSerializer;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public final class SuspendParams {
    public final PersistableBundle appExtras;
    public final SuspendDialogInfo dialogInfo;
    public final PersistableBundle launcherExtras;

    public SuspendParams(SuspendDialogInfo suspendDialogInfo, PersistableBundle persistableBundle, PersistableBundle persistableBundle2) {
        this.dialogInfo = suspendDialogInfo;
        this.appExtras = persistableBundle;
        this.launcherExtras = persistableBundle2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuspendParams)) {
            return false;
        }
        SuspendParams suspendParams = (SuspendParams) obj;
        return Objects.equals(this.dialogInfo, suspendParams.dialogInfo) && BaseBundle.kindofEquals(this.appExtras, suspendParams.appExtras) && BaseBundle.kindofEquals(this.launcherExtras, suspendParams.launcherExtras);
    }

    public int hashCode() {
        int hashCode = Objects.hashCode(this.dialogInfo) * 31;
        PersistableBundle persistableBundle = this.appExtras;
        int size = (hashCode + (persistableBundle != null ? persistableBundle.size() : 0)) * 31;
        PersistableBundle persistableBundle2 = this.launcherExtras;
        return size + (persistableBundle2 != null ? persistableBundle2.size() : 0);
    }

    public void saveToXml(TypedXmlSerializer typedXmlSerializer) {
        if (this.dialogInfo != null) {
            typedXmlSerializer.startTag((String) null, "dialog-info");
            this.dialogInfo.saveToXml(typedXmlSerializer);
            typedXmlSerializer.endTag((String) null, "dialog-info");
        }
        if (this.appExtras != null) {
            typedXmlSerializer.startTag((String) null, "app-extras");
            try {
                this.appExtras.saveToXml(typedXmlSerializer);
            } catch (XmlPullParserException e) {
                Slog.e("FrameworkPackageUserState", "Exception while trying to write appExtras. Will be lost on reboot", e);
            }
            typedXmlSerializer.endTag((String) null, "app-extras");
        }
        if (this.launcherExtras != null) {
            typedXmlSerializer.startTag((String) null, "launcher-extras");
            try {
                this.launcherExtras.saveToXml(typedXmlSerializer);
            } catch (XmlPullParserException e2) {
                Slog.e("FrameworkPackageUserState", "Exception while trying to write launcherExtras. Will be lost on reboot", e2);
            }
            typedXmlSerializer.endTag((String) null, "launcher-extras");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0059 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.pm.pkg.SuspendParams restoreFromXml(com.android.modules.utils.TypedXmlPullParser r10) {
        /*
            java.lang.String r0 = "FrameworkPackageUserState"
            int r1 = r10.getDepth()
            r2 = 0
            r3 = r2
            r4 = r3
        L9:
            int r5 = r10.next()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            r6 = 1
            if (r5 == r6) goto L91
            r7 = 3
            if (r5 != r7) goto L19
            int r8 = r10.getDepth()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            if (r8 <= r1) goto L91
        L19:
            if (r5 == r7) goto L9
            r7 = 4
            if (r5 != r7) goto L1f
            goto L9
        L1f:
            java.lang.String r5 = r10.getName()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            int r7 = r5.hashCode()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            r8 = -538220657(0xffffffffdfeb678f, float:-3.3925368E19)
            r9 = 2
            if (r7 == r8) goto L4c
            r8 = -22768109(0xfffffffffea49613, float:-1.0938631E38)
            if (r7 == r8) goto L42
            r8 = 1627485488(0x61017530, float:1.4925464E20)
            if (r7 == r8) goto L38
            goto L56
        L38:
            java.lang.String r7 = "launcher-extras"
            boolean r5 = r5.equals(r7)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            if (r5 == 0) goto L56
            r5 = r9
            goto L57
        L42:
            java.lang.String r7 = "dialog-info"
            boolean r5 = r5.equals(r7)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            if (r5 == 0) goto L56
            r5 = 0
            goto L57
        L4c:
            java.lang.String r7 = "app-extras"
            boolean r5 = r5.equals(r7)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            if (r5 == 0) goto L56
            r5 = r6
            goto L57
        L56:
            r5 = -1
        L57:
            if (r5 == 0) goto L85
            if (r5 == r6) goto L80
            if (r5 == r9) goto L7b
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            r5.<init>()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            java.lang.String r6 = "Unknown tag "
            r5.append(r6)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            java.lang.String r6 = r10.getName()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            r5.append(r6)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            java.lang.String r6 = " in SuspendParams. Ignoring"
            r5.append(r6)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            java.lang.String r5 = r5.toString()     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            android.util.Slog.w(r0, r5)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            goto L9
        L7b:
            android.os.PersistableBundle r4 = android.os.PersistableBundle.restoreFromXml(r10)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            goto L9
        L80:
            android.os.PersistableBundle r3 = android.os.PersistableBundle.restoreFromXml(r10)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            goto L9
        L85:
            android.content.pm.SuspendDialogInfo r2 = android.content.pm.SuspendDialogInfo.restoreFromXml(r10)     // Catch: org.xmlpull.v1.XmlPullParserException -> L8b
            goto L9
        L8b:
            r10 = move-exception
            java.lang.String r1 = "Exception while trying to parse SuspendParams, some fields may default"
            android.util.Slog.e(r0, r1, r10)
        L91:
            com.android.server.pm.pkg.SuspendParams r10 = new com.android.server.pm.pkg.SuspendParams
            r10.<init>(r2, r3, r4)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.pkg.SuspendParams.restoreFromXml(com.android.modules.utils.TypedXmlPullParser):com.android.server.pm.pkg.SuspendParams");
    }

    public SuspendDialogInfo getDialogInfo() {
        return this.dialogInfo;
    }

    public PersistableBundle getAppExtras() {
        return this.appExtras;
    }

    public PersistableBundle getLauncherExtras() {
        return this.launcherExtras;
    }
}
