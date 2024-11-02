package com.android.systemui.keyguard;

import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class KeyguardViewMediator$$ExternalSyntheticLambda6 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KeyguardViewMediatorHelperImpl f$0;

    public /* synthetic */ KeyguardViewMediator$$ExternalSyntheticLambda6(KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = keyguardViewMediatorHelperImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x0172, code lost:
    
        if (r9 == false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0185, code lost:
    
        r9 = r0.fixedRotationMonitor;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0189, code lost:
    
        if (r9.isMonitorStarted == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x018d, code lost:
    
        if (r9.isFixedRotated == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x018f, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0192, code lost:
    
        if (r13 == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0194, code lost:
    
        r13 = r1.mFinishedCallback;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0196, code lost:
    
        if (r13 == null) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0198, code lost:
    
        r9.setPendingRunnable(new com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1(r13, r0));
        r1.mFinishedCallback = null;
        r1.mApps = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01a4, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01a9, code lost:
    
        if (com.android.systemui.LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01af, code lost:
    
        if (r12.isEnabled() == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01b5, code lost:
    
        if (r12.biometricSourceType != android.hardware.biometrics.BiometricSourceType.FINGERPRINT) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01b7, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01ba, code lost:
    
        if (r13 == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01bc, code lost:
    
        r0.updateMonitor.removeMaskViewForOpticalFpSensor();
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01b9, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01c1, code lost:
    
        r12.setForceInvisible(null, true);
        r14 = new kotlin.Pair(java.lang.Boolean.TRUE, java.lang.Boolean.valueOf(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x01a6, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0191, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0183, code lost:
    
        if (r9 != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0581, code lost:
    
        if (r2 != false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0587, code lost:
    
        if (r0.isFastWakeAndUnlockMode() == false) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0735, code lost:
    
        if (r10 != false) goto L415;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:330:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x084d  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0858  */
    /* JADX WARN: Removed duplicated region for block: B:553:0x0969 A[LOOP:3: B:547:0x092e->B:553:0x0969, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:554:0x0967 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013d  */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v8, types: [com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl$showForegroundImmediatelyIfNeeded$1$1] */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r1v61 */
    /* JADX WARN: Type inference failed for: r2v46 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r3v109 */
    /* JADX WARN: Type inference failed for: r3v110 */
    /* JADX WARN: Type inference failed for: r3v119 */
    /* JADX WARN: Type inference failed for: r3v125 */
    /* JADX WARN: Type inference failed for: r3v126 */
    /* JADX WARN: Type inference failed for: r3v130 */
    /* JADX WARN: Type inference failed for: r3v131 */
    /* JADX WARN: Type inference failed for: r3v132 */
    /* JADX WARN: Type inference failed for: r3v137 */
    /* JADX WARN: Type inference failed for: r3v139 */
    /* JADX WARN: Type inference failed for: r3v71 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /* JADX WARN: Type inference failed for: r3v98 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r9v106 */
    /* JADX WARN: Type inference failed for: r9v107 */
    /* JADX WARN: Type inference failed for: r9v110 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v65 */
    /* JADX WARN: Type inference failed for: r9v66 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v71 */
    /* JADX WARN: Type inference failed for: r9v80 */
    /* JADX WARN: Type inference failed for: r9v81 */
    /* JADX WARN: Type inference failed for: r9v83 */
    /* JADX WARN: Type inference failed for: r9v84, types: [com.android.systemui.keyguard.KeyguardFixedRotationMonitor] */
    /* JADX WARN: Type inference failed for: r9v90 */
    /* JADX WARN: Type inference failed for: r9v91 */
    /* JADX WARN: Type inference failed for: r9v93 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void accept$com$android$systemui$keyguard$KeyguardViewMediator$12$$InternalSyntheticLambda$1$a0b69a91035649d75be7d9c1b05e8e4316a3b85b56842dba41aec11ee28c01bc$2(java.lang.Object r21) {
        /*
            Method dump skipped, instructions count: 2666
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda6.accept$com$android$systemui$keyguard$KeyguardViewMediator$12$$InternalSyntheticLambda$1$a0b69a91035649d75be7d9c1b05e8e4316a3b85b56842dba41aec11ee28c01bc$2(java.lang.Object):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x021c, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021f  */
    @Override // java.util.function.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void accept(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda6.accept(java.lang.Object):void");
    }
}
