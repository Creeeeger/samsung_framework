package com.android.wm.shell.compatui;

import android.util.Pair;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LetterboxEduWindowManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LetterboxEduWindowManager f$0;

    public /* synthetic */ LetterboxEduWindowManager$$ExternalSyntheticLambda0(LetterboxEduWindowManager letterboxEduWindowManager, int i) {
        this.$r8$classId = i;
        this.f$0 = letterboxEduWindowManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 1;
        switch (this.$r8$classId) {
            case 0:
                LetterboxEduWindowManager letterboxEduWindowManager = this.f$0;
                LetterboxEduDialogLayout letterboxEduDialogLayout = letterboxEduWindowManager.mLayout;
                if (letterboxEduDialogLayout != null) {
                    letterboxEduWindowManager.mAnimationController.startEnterAnimation(letterboxEduDialogLayout, new LetterboxEduWindowManager$$ExternalSyntheticLambda0(letterboxEduWindowManager, i));
                    return;
                }
                return;
            case 1:
                LetterboxEduWindowManager letterboxEduWindowManager2 = this.f$0;
                LetterboxEduDialogLayout letterboxEduDialogLayout2 = letterboxEduWindowManager2.mLayout;
                if (letterboxEduDialogLayout2 != null) {
                    letterboxEduDialogLayout2.setDismissOnClickListener(new LetterboxEduWindowManager$$ExternalSyntheticLambda0(letterboxEduWindowManager2, 2));
                    letterboxEduWindowManager2.mLayout.mDialogTitle.sendAccessibilityEvent(8);
                    return;
                }
                return;
            case 2:
                LetterboxEduWindowManager letterboxEduWindowManager3 = this.f$0;
                if (letterboxEduWindowManager3.mLayout != null) {
                    letterboxEduWindowManager3.mCompatUIConfiguration.mLetterboxEduSharedPreferences.edit().putBoolean(String.valueOf(letterboxEduWindowManager3.mUserId), true).apply();
                    letterboxEduWindowManager3.mLayout.setDismissOnClickListener(null);
                    letterboxEduWindowManager3.mAnimationController.startExitAnimation(letterboxEduWindowManager3.mLayout, new LetterboxEduWindowManager$$ExternalSyntheticLambda0(letterboxEduWindowManager3, 3));
                    return;
                }
                return;
            default:
                LetterboxEduWindowManager letterboxEduWindowManager4 = this.f$0;
                letterboxEduWindowManager4.release();
                letterboxEduWindowManager4.mOnDismissCallback.accept(Pair.create(letterboxEduWindowManager4.mTaskInfo, letterboxEduWindowManager4.mTaskListener));
                return;
        }
    }
}
