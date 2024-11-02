package com.android.wm.shell.onehanded;

import com.android.wm.shell.onehanded.OneHandedState;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class OneHandedState {
    public static int sCurrentState;
    public final List mStateChangeListeners = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface OnStateChangedListener {
    }

    public OneHandedState() {
        sCurrentState = 0;
    }

    public final void setState(final int i) {
        sCurrentState = i;
        List list = this.mStateChangeListeners;
        if (!((ArrayList) list).isEmpty()) {
            ((ArrayList) list).forEach(new Consumer() { // from class: com.android.wm.shell.onehanded.OneHandedState$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    int i2 = i;
                    OneHandedTutorialHandler oneHandedTutorialHandler = (OneHandedTutorialHandler) ((OneHandedState.OnStateChangedListener) obj);
                    oneHandedTutorialHandler.mCurrentState = i2;
                    oneHandedTutorialHandler.mBackgroundWindowManager.mCurrentState = i2;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 3) {
                                    return;
                                }
                            } else {
                                oneHandedTutorialHandler.checkTransitionEnd();
                                oneHandedTutorialHandler.setupAlphaTransition(false);
                                return;
                            }
                        } else {
                            oneHandedTutorialHandler.createViewAndAttachToWindow(oneHandedTutorialHandler.mContext);
                            oneHandedTutorialHandler.updateThemeColor();
                            oneHandedTutorialHandler.setupAlphaTransition(true);
                            return;
                        }
                    }
                    oneHandedTutorialHandler.checkTransitionEnd();
                    oneHandedTutorialHandler.removeTutorialFromWindowManager();
                }
            });
        }
    }
}
