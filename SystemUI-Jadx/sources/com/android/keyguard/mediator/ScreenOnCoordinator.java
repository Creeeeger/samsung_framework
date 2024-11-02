package com.android.keyguard.mediator;

import android.os.Handler;
import com.android.systemui.unfold.FoldAodAnimationController;
import com.android.systemui.unfold.SysUIUnfoldComponent;
import com.android.systemui.unfold.UnfoldLightRevealOverlayAnimation;
import com.android.systemui.util.concurrency.PendingTasksContainer;
import java.util.Optional;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ScreenOnCoordinator {
    public final FoldAodAnimationController foldAodAnimationController;
    public final Handler mainHandler;
    public final PendingTasksContainer pendingTasks = new PendingTasksContainer();
    public final UnfoldLightRevealOverlayAnimation unfoldLightRevealAnimation;

    public ScreenOnCoordinator(Optional<SysUIUnfoldComponent> optional, Handler handler) {
        this.mainHandler = handler;
        this.unfoldLightRevealAnimation = (UnfoldLightRevealOverlayAnimation) optional.map(new Function() { // from class: com.android.keyguard.mediator.ScreenOnCoordinator$unfoldLightRevealAnimation$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SysUIUnfoldComponent) obj).getUnfoldLightRevealOverlayAnimation();
            }
        }).orElse(null);
        this.foldAodAnimationController = (FoldAodAnimationController) optional.map(new Function() { // from class: com.android.keyguard.mediator.ScreenOnCoordinator$foldAodAnimationController$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((SysUIUnfoldComponent) obj).getFoldAodAnimationController();
            }
        }).orElse(null);
    }
}
