package com.android.systemui.qs.dagger;

import com.android.systemui.qs.QSContainerImplController;
import com.android.systemui.qs.QSFragment;
import com.android.systemui.qs.QSSquishinessController;
import com.android.systemui.qs.SecQSPanelController;
import com.android.systemui.qs.SecQuickQSPanelController;
import com.android.systemui.qs.animator.QsExpandAnimator;
import com.android.systemui.qs.animator.QsOpenAnimator;
import com.android.systemui.qs.animator.QsTransitionAnimator;
import com.android.systemui.qs.animator.SecQSFragmentAnimatorManager;
import com.android.systemui.qs.bar.BarController;
import com.android.systemui.qs.buttons.QSButtonsContainerController;
import com.android.systemui.qs.cinema.QSCinemaCompany;
import com.android.systemui.qs.customize.QSCustomizerController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface QSFragmentComponent {

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Factory {
        QSFragmentComponent create(QSFragment qSFragment);
    }

    BarController getBarController();

    QSButtonsContainerController getQSButtonsContainerController();

    QSCinemaCompany getQSCinemaCompany();

    QSContainerImplController getQSContainerImplController();

    QSCustomizerController getQSCustomizerController();

    QSSquishinessController getQSSquishinessController();

    QsExpandAnimator getQsExpandAnimator();

    QsOpenAnimator getQsOpenAnimator();

    QsTransitionAnimator getQsTransitionAnimator();

    SecQSFragmentAnimatorManager getSecQSFragmentAnimatorManager();

    SecQSPanelController getSecQSPanelController();

    SecQuickQSPanelController getSecQuickQSPanelController();
}
