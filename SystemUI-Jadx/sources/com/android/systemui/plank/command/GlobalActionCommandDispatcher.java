package com.android.systemui.plank.command;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class GlobalActionCommandDispatcher implements PlankCommandDispatcher {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum Action {
        show,
        hide,
        add_feature,
        remove_feature,
        add_condition,
        remove_condition,
        reset,
        unknown
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Action.values().length];
            try {
                iArr[Action.show.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Action.hide.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Action.add_feature.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Action.remove_feature.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Action.add_condition.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Action.remove_condition.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Action.reset.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Action.unknown.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00af, code lost:
    
        return r5;
     */
    @Override // com.android.systemui.plank.command.PlankCommandDispatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle dispatch(java.lang.String r6, android.os.Bundle r7) {
        /*
            r5 = this;
            android.os.Bundle r5 = new android.os.Bundle
            r5.<init>()
            java.lang.String r0 = "key_monitor_result"
            r1 = 1
            r5.putBoolean(r0, r1)
            com.android.systemui.plank.command.GlobalActionCommandDispatcher$Action r6 = com.android.systemui.plank.command.GlobalActionCommandDispatcher.Action.valueOf(r6)     // Catch: java.lang.Exception -> L10
            goto L12
        L10:
            com.android.systemui.plank.command.GlobalActionCommandDispatcher$Action r6 = com.android.systemui.plank.command.GlobalActionCommandDispatcher.Action.unknown
        L12:
            int[] r1 = com.android.systemui.plank.command.GlobalActionCommandDispatcher.WhenMappings.$EnumSwitchMapping$0
            int r6 = r6.ordinal()
            r6 = r1[r6]
            java.lang.String r1 = "removed"
            java.lang.String r2 = "key_boolean_type"
            java.lang.String r3 = "key_string_type"
            r4 = 0
            switch(r6) {
                case 1: goto La3;
                case 2: goto La3;
                case 3: goto L8b;
                case 4: goto L73;
                case 5: goto L5b;
                case 6: goto L43;
                case 7: goto L2d;
                case 8: goto L27;
                default: goto L25;
            }
        L25:
            goto Laf
        L27:
            r6 = 0
            r5.putBoolean(r0, r6)
            goto Laf
        L2d:
            com.android.systemui.globalactions.presentation.features.FakeFeatures r6 = com.android.systemui.globalactions.presentation.features.FakeFeatures.sInstance
            r6.getClass()
            java.util.HashMap r6 = com.android.systemui.globalactions.presentation.features.FakeFeatures.sConditionMap
            r6.clear()
            com.android.systemui.globalactions.util.FakeConditionChecker r6 = com.android.systemui.globalactions.util.FakeConditionChecker.sInstance
            r6.getClass()
            java.util.HashMap r6 = com.android.systemui.globalactions.util.FakeConditionChecker.sConditionMap
            r6.clear()
            goto Laf
        L43:
            if (r7 == 0) goto L49
            java.lang.String r4 = r7.getString(r3)
        L49:
            com.android.systemui.globalactions.util.FakeConditionChecker r6 = com.android.systemui.globalactions.util.FakeConditionChecker.sInstance
            r6.getClass()
            java.util.HashMap r7 = com.android.systemui.globalactions.util.FakeConditionChecker.sConditionMap
            r7.remove(r4)
            com.samsung.android.globalactions.util.LogWrapper r6 = r6.mLogWrapper
            java.lang.String r7 = "FakeConditionChecker"
            r6.v(r7, r1)
            goto Laf
        L5b:
            if (r7 == 0) goto L62
            java.lang.String r6 = r7.getString(r3)
            goto L63
        L62:
            r6 = r4
        L63:
            if (r7 == 0) goto L6d
            boolean r7 = r7.getBoolean(r2)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r7)
        L6d:
            com.android.systemui.globalactions.util.FakeConditionChecker r7 = com.android.systemui.globalactions.util.FakeConditionChecker.sInstance
            r7.updateCondition(r6, r4)
            goto Laf
        L73:
            if (r7 == 0) goto L79
            java.lang.String r4 = r7.getString(r3)
        L79:
            com.android.systemui.globalactions.presentation.features.FakeFeatures r6 = com.android.systemui.globalactions.presentation.features.FakeFeatures.sInstance
            r6.getClass()
            java.util.HashMap r7 = com.android.systemui.globalactions.presentation.features.FakeFeatures.sConditionMap
            r7.remove(r4)
            com.samsung.android.globalactions.util.LogWrapper r6 = r6.mLogWrapper
            java.lang.String r7 = "FakeFeatures"
            r6.v(r7, r1)
            goto Laf
        L8b:
            if (r7 == 0) goto L92
            java.lang.String r6 = r7.getString(r3)
            goto L93
        L92:
            r6 = r4
        L93:
            if (r7 == 0) goto L9d
            boolean r7 = r7.getBoolean(r2)
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r7)
        L9d:
            com.android.systemui.globalactions.presentation.features.FakeFeatures r7 = com.android.systemui.globalactions.presentation.features.FakeFeatures.sInstance
            r7.updateFeature(r6, r4)
            goto Laf
        La3:
            java.lang.Class<com.android.systemui.globalactions.GlobalActionsComponent> r6 = com.android.systemui.globalactions.GlobalActionsComponent.class
            java.lang.Object r6 = com.android.systemui.Dependency.get(r6)
            com.android.systemui.globalactions.GlobalActionsComponent r6 = (com.android.systemui.globalactions.GlobalActionsComponent) r6
            r7 = -1
            r6.handleShowGlobalActionsMenu(r7)
        Laf:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.plank.command.GlobalActionCommandDispatcher.dispatch(java.lang.String, android.os.Bundle):android.os.Bundle");
    }
}
