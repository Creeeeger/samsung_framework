package androidx.emoji2.text;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import java.util.Collections;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DefaultEmojiCompatConfig {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DefaultEmojiCompatConfigFactory {
        public final DefaultEmojiCompatConfigHelper mHelper;

        public DefaultEmojiCompatConfigFactory(DefaultEmojiCompatConfigHelper defaultEmojiCompatConfigHelper) {
            this.mHelper = defaultEmojiCompatConfigHelper == null ? new DefaultEmojiCompatConfigHelper_API28() : defaultEmojiCompatConfigHelper;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class DefaultEmojiCompatConfigHelper {
        public ProviderInfo getProviderInfo(ResolveInfo resolveInfo) {
            throw new IllegalStateException("Unable to get provider info prior to API 19");
        }

        public Signature[] getSigningSignatures(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        public List queryIntentContentProviders(PackageManager packageManager, Intent intent) {
            return Collections.emptyList();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public class DefaultEmojiCompatConfigHelper_API19 extends DefaultEmojiCompatConfigHelper {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public final ProviderInfo getProviderInfo(ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public final List queryIntentContentProviders(PackageManager packageManager, Intent intent) {
            return packageManager.queryIntentContentProviders(intent, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class DefaultEmojiCompatConfigHelper_API28 extends DefaultEmojiCompatConfigHelper_API19 {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public final Signature[] getSigningSignatures(PackageManager packageManager, String str) {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    private DefaultEmojiCompatConfig() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0043 A[EDGE_INSN: B:12:0x0043->B:13:0x0043 BREAK  A[LOOP:0: B:2:0x0020->B:29:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[LOOP:0: B:2:0x0020->B:29:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static androidx.emoji2.text.FontRequestEmojiCompatConfig create(android.content.Context r8) {
        /*
            androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory r0 = new androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigFactory
            r1 = 0
            r0.<init>(r1)
            android.content.pm.PackageManager r2 = r8.getPackageManager()
            java.lang.String r3 = "Package manager required to locate emoji font provider"
            androidx.core.util.Preconditions.checkNotNull(r2, r3)
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = "androidx.content.action.LOAD_EMOJI_FONT"
            r3.<init>(r4)
            androidx.emoji2.text.DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper r0 = r0.mHelper
            java.util.List r3 = r0.queryIntentContentProviders(r2, r3)
            java.util.Iterator r3 = r3.iterator()
        L20:
            boolean r4 = r3.hasNext()
            r5 = 0
            if (r4 == 0) goto L42
            java.lang.Object r4 = r3.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            android.content.pm.ProviderInfo r4 = r0.getProviderInfo(r4)
            if (r4 == 0) goto L3e
            android.content.pm.ApplicationInfo r6 = r4.applicationInfo
            if (r6 == 0) goto L3e
            int r6 = r6.flags
            r7 = 1
            r6 = r6 & r7
            if (r6 != r7) goto L3e
            goto L3f
        L3e:
            r7 = r5
        L3f:
            if (r7 == 0) goto L20
            goto L43
        L42:
            r4 = r1
        L43:
            if (r4 != 0) goto L46
            goto L74
        L46:
            java.lang.String r3 = r4.authority     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            java.lang.String r4 = r4.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            android.content.pm.Signature[] r0 = r0.getSigningSignatures(r2, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            r2.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            int r6 = r0.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
        L54:
            if (r5 >= r6) goto L62
            r7 = r0[r5]     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            byte[] r7 = r7.toByteArray()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            r2.add(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            int r5 = r5 + 1
            goto L54
        L62:
            java.util.List r0 = java.util.Collections.singletonList(r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            androidx.core.provider.FontRequest r2 = new androidx.core.provider.FontRequest     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            java.lang.String r5 = "emojicompat-emoji-font"
            r2.<init>(r3, r4, r5, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6e
            goto L75
        L6e:
            r0 = move-exception
            java.lang.String r2 = "emoji2.text.DefaultEmojiConfig"
            android.util.Log.wtf(r2, r0)
        L74:
            r2 = r1
        L75:
            if (r2 != 0) goto L78
            goto L7d
        L78:
            androidx.emoji2.text.FontRequestEmojiCompatConfig r1 = new androidx.emoji2.text.FontRequestEmojiCompatConfig
            r1.<init>(r8, r2)
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.emoji2.text.DefaultEmojiCompatConfig.create(android.content.Context):androidx.emoji2.text.FontRequestEmojiCompatConfig");
    }
}
