package com.samsung.android.desktopsystemui.sharedlib.keyguard;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardConstants {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class SecurityMode {
        public static final int INVALID = 0;
        public static final int NONE = 1;
        public static final int OTHERS = 5;
        public static final int PASSWORD = 3;
        public static final int PATTERN = 2;
        public static final int PIN = 4;

        private SecurityMode() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static class UpdateType {
        public static final int BOUNCER_TEXT = 2;
        public static final int SCREEN_STATE = 3;
        public static final int TRUST_STATE = 4;
        public static final int UNLOCK_FAIL = 1;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static final class BouncerTextKey {
            public static final String MSG = "msg";
            public static final String POPUP_MSG = "popupMsg";
            public static final String SUB_MSG = "subMsg";

            private BouncerTextKey() {
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static final class ScreenStateKey {
            public static final String IS_SCREEN_ON = "isScreenOn";

            private ScreenStateKey() {
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public static final class TrustStateKey {
            public static final String TRUST = "trust";

            private TrustStateKey() {
            }
        }

        private UpdateType() {
        }
    }

    private KeyguardConstants() {
    }
}
