package com.android.wm.shell.activityembedding;

import android.R;
import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.window.TransitionInfo;
import com.android.internal.policy.TransitionAnimation;
import com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationAdapter;
import com.android.wm.shell.common.ScreenshotUtils;
import com.android.wm.shell.transition.TransitionAnimationHelper;
import com.android.wm.shell.util.TransitionUtil;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ActivityEmbeddingAnimationRunner {
    public Animator mActiveAnimator;
    final ActivityEmbeddingAnimationSpec mAnimationSpec;
    public final ActivityEmbeddingController mController;

    public ActivityEmbeddingAnimationRunner(Context context, ActivityEmbeddingController activityEmbeddingController) {
        this.mController = activityEmbeddingController;
        this.mAnimationSpec = new ActivityEmbeddingAnimationSpec(context);
    }

    public static ActivityEmbeddingAnimationAdapter createOpenCloseAnimationAdapter(TransitionInfo transitionInfo, TransitionInfo.Change change, ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1 activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1, Rect rect) {
        int i;
        Animation loadDefaultAnimationRes;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = true;
        int i7 = activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1.$r8$classId;
        ActivityEmbeddingAnimationSpec activityEmbeddingAnimationSpec = activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1.f$0;
        switch (i7) {
            case 0:
                activityEmbeddingAnimationSpec.getClass();
                boolean isOpeningType = TransitionUtil.isOpeningType(change.getMode());
                TransitionAnimation transitionAnimation = activityEmbeddingAnimationSpec.mTransitionAnimation;
                Animation loadAttributeAnimation = TransitionAnimationHelper.loadAttributeAnimation(transitionInfo, change, 0, transitionAnimation, false);
                if (loadAttributeAnimation == null || !loadAttributeAnimation.getShowBackdrop()) {
                    z = false;
                }
                if (z) {
                    if (isOpeningType) {
                        i6 = 17432935;
                    } else {
                        i6 = 17432936;
                    }
                    loadDefaultAnimationRes = transitionAnimation.loadDefaultAnimationRes(i6);
                } else if (CoreRune.MW_EMBED_ACTIVITY_ANIMATION) {
                    if (isOpeningType) {
                        i5 = R.anim.ft_avd_toarrow_rectangle_2_animation;
                    } else {
                        i5 = R.anim.ft_avd_toarrow_rectangle_2_pivot_0_animation;
                    }
                    loadDefaultAnimationRes = transitionAnimation.loadDefaultAnimationRes(i5);
                } else {
                    if (isOpeningType) {
                        i4 = R.anim.activity_close_enter;
                    } else {
                        i4 = R.anim.activity_close_exit;
                    }
                    loadDefaultAnimationRes = transitionAnimation.loadDefaultAnimationRes(i4);
                }
                loadDefaultAnimationRes.initialize(rect.width(), rect.height(), rect.width(), rect.height());
                loadDefaultAnimationRes.scaleCurrentDuration(activityEmbeddingAnimationSpec.mTransitionAnimationScaleSetting);
                break;
            default:
                activityEmbeddingAnimationSpec.getClass();
                boolean isOpeningType2 = TransitionUtil.isOpeningType(change.getMode());
                TransitionAnimation transitionAnimation2 = activityEmbeddingAnimationSpec.mTransitionAnimation;
                Animation loadAttributeAnimation2 = TransitionAnimationHelper.loadAttributeAnimation(transitionInfo, change, 0, transitionAnimation2, false);
                if (loadAttributeAnimation2 == null || !loadAttributeAnimation2.getShowBackdrop()) {
                    z = false;
                }
                if (z) {
                    if (isOpeningType2) {
                        i3 = 17432937;
                    } else {
                        i3 = 17432938;
                    }
                    loadDefaultAnimationRes = transitionAnimation2.loadDefaultAnimationRes(i3);
                } else if (CoreRune.MW_EMBED_ACTIVITY_ANIMATION) {
                    if (isOpeningType2) {
                        i2 = R.anim.ft_avd_toarrow_rectangle_2_pivot_animation;
                    } else {
                        i2 = R.anim.ft_avd_toarrow_rectangle_3_animation;
                    }
                    loadDefaultAnimationRes = transitionAnimation2.loadDefaultAnimationRes(i2);
                } else {
                    if (isOpeningType2) {
                        i = R.anim.activity_open_enter;
                    } else {
                        i = R.anim.activity_open_exit;
                    }
                    loadDefaultAnimationRes = transitionAnimation2.loadDefaultAnimationRes(i);
                }
                loadDefaultAnimationRes.initialize(rect.width(), rect.height(), rect.width(), rect.height());
                loadDefaultAnimationRes.scaleCurrentDuration(activityEmbeddingAnimationSpec.mTransitionAnimationScaleSetting);
                break;
        }
        return new ActivityEmbeddingAnimationAdapter(loadDefaultAnimationRes, change, change.getLeash(), rect, transitionInfo.getRoot(TransitionUtil.rootIndexFor(change, transitionInfo)));
    }

    public static List createOpenCloseAnimationAdapters(TransitionInfo transitionInfo, boolean z, ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda1 activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1, SurfaceControl.Transaction transaction) {
        SurfaceControl orCreateScreenshot;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        for (TransitionInfo.Change change : transitionInfo.getChanges()) {
            if (TransitionUtil.isOpeningType(change.getMode())) {
                if (CoreRune.MW_EMBED_ACTIVITY_ANIMATION) {
                    arrayList.add(0, change);
                } else {
                    arrayList.add(change);
                }
                rect.union(change.getEndAbsBounds());
            } else {
                if (CoreRune.MW_EMBED_ACTIVITY_ANIMATION) {
                    arrayList2.add(0, change);
                } else {
                    arrayList2.add(change);
                }
                rect2.union(change.getStartAbsBounds());
                rect2.union(change.getEndAbsBounds());
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList.iterator();
        int i = 1000;
        while (it.hasNext()) {
            ActivityEmbeddingAnimationAdapter createOpenCloseAnimationAdapter = createOpenCloseAnimationAdapter(transitionInfo, (TransitionInfo.Change) it.next(), activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1, rect);
            if (z) {
                createOpenCloseAnimationAdapter.mOverrideLayer = i;
                i++;
            }
            arrayList3.add(createOpenCloseAnimationAdapter);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            TransitionInfo.Change change2 = (TransitionInfo.Change) it2.next();
            if ((!TransitionUtil.isClosingType(change2.getMode()) ? false : !change2.getStartAbsBounds().equals(change2.getEndAbsBounds())) && (orCreateScreenshot = getOrCreateScreenshot(change2, change2, transaction)) != null) {
                ActivityEmbeddingAnimationAdapter.SnapshotAdapter snapshotAdapter = new ActivityEmbeddingAnimationAdapter.SnapshotAdapter(new AlphaAnimation(1.0f, 1.0f), change2, orCreateScreenshot, transitionInfo.getRoot(TransitionUtil.rootIndexFor(change2, transitionInfo)));
                if (!z) {
                    snapshotAdapter.mOverrideLayer = i;
                    i++;
                }
                arrayList3.add(snapshotAdapter);
            }
            ActivityEmbeddingAnimationAdapter createOpenCloseAnimationAdapter2 = createOpenCloseAnimationAdapter(transitionInfo, change2, activityEmbeddingAnimationRunner$$ExternalSyntheticLambda1, rect2);
            if (!z) {
                createOpenCloseAnimationAdapter2.mOverrideLayer = i;
                i++;
            }
            arrayList3.add(createOpenCloseAnimationAdapter2);
        }
        return arrayList3;
    }

    public static SurfaceControl getOrCreateScreenshot(TransitionInfo.Change change, TransitionInfo.Change change2, SurfaceControl.Transaction transaction) {
        SurfaceControl snapshot = change.getSnapshot();
        if (snapshot != null) {
            transaction.reparent(snapshot, change2.getLeash());
            return snapshot;
        }
        Rect rect = new Rect(change.getStartAbsBounds());
        rect.offsetTo(0, 0);
        return ScreenshotUtils.takeScreenshot(transaction, change.getLeash(), change2.getLeash(), rect, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0440, code lost:
    
        r5 = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0450, code lost:
    
        if (r2.isEmpty() == false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0452, code lost:
    
        r4 = r21.getChanges().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x045e, code lost:
    
        if (r4.hasNext() == false) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0460, code lost:
    
        r6 = (android.window.TransitionInfo.Change) r4.next();
        r9 = r6.getLeash();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x046e, code lost:
    
        if (r6.getParent() == null) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0470, code lost:
    
        r1.setPosition(r9, r6.getEndRelOffset().x, r6.getEndRelOffset().y);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x04a9, code lost:
    
        r1.setWindowCrop(r9, r6.getEndAbsBounds().width(), r6.getEndAbsBounds().height());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x04c0, code lost:
    
        if (r6.getMode() != 2) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x04c6, code lost:
    
        r1.show(r9);
        r1.setAlpha(r9, 1.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x04c2, code lost:
    
        r1.hide(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0482, code lost:
    
        r10 = r14.getRoot(com.android.wm.shell.util.TransitionUtil.rootIndexFor(r6, r14));
        r1.setPosition(r9, r6.getEndAbsBounds().left - r10.getOffset().x, r6.getEndAbsBounds().top - r10.getOffset().y);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x05c9, code lost:
    
        r5.setDuration(r7);
        r5.addListener(new com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationRunner.AnonymousClass1(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x05d6, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x04cf, code lost:
    
        r6 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x04d7, code lost:
    
        if (r6.hasNext() == false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x04d9, code lost:
    
        r9 = (com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationAdapter) r6.next();
        r10 = r9.mAnimation;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x04e5, code lost:
    
        if (r10.hasExtension() != false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x04e8, code lost:
    
        r9 = r9.mChange;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x04f2, code lost:
    
        if (com.android.wm.shell.util.TransitionUtil.isOpeningType(r9.getMode()) == false) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0501, code lost:
    
        com.android.wm.shell.transition.TransitionAnimationHelper.edgeExtendWindow(r9, r10, r1, r23);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x04f4, code lost:
    
        r25.add(new com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda2(r9, r10, r23));
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0509, code lost:
    
        r6 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0513, code lost:
    
        if (r6.hasNext() == false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0515, code lost:
    
        r9 = (com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationAdapter) r6.next();
        r9 = com.android.wm.shell.transition.TransitionAnimationHelper.getTransitionBackgroundColorIfSet(r14, r9.mChange, r9.mAnimation, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0524, code lost:
    
        if (r9 == 0) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0526, code lost:
    
        r4 = r21.getRootLeash();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x052a, code lost:
    
        if (r9 != 0) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x052d, code lost:
    
        r6 = android.graphics.Color.valueOf(r9);
        r9 = new float[]{r6.red(), r6.green(), r6.blue()};
        r3 = new android.view.SurfaceControl.Builder().setName("Animation Background").setParent(r4).setColorLayer().setOpaque(true).build();
        r1.setLayer(r3, com.samsung.android.nexus.video.VideoPlayer.MEDIA_ERROR_SYSTEM).setColor(r3, r9).show(r3);
        r23.remove(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0572, code lost:
    
        r3 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x057a, code lost:
    
        if (r3.hasNext() == false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x057c, code lost:
    
        r7 = java.lang.Math.max(r7, ((com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationAdapter) r3.next()).mAnimation.computeDurationHint());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x058d, code lost:
    
        r5.addUpdateListener(new com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationRunner$$ExternalSyntheticLambda0(r2, r5));
        r1.setFrameTimelineVsync(android.view.Choreographer.getInstance().getVsyncId());
        r3 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x05a8, code lost:
    
        if (r3.hasNext() == false) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x05aa, code lost:
    
        r4 = (com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationAdapter) r3.next();
        r6 = r4.mLeash;
        r1.show(r6);
        r9 = r4.mOverrideLayer;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x05b8, code lost:
    
        if (r9 == (-1)) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x05ba, code lost:
    
        r1.setLayer(r6, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x05bd, code lost:
    
        r4.mAnimation.getTransformationAt(0.0f, r4.mTransformation);
        r4.onAnimationUpdateInner(r1);
     */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator createAnimator(android.window.TransitionInfo r21, android.view.SurfaceControl.Transaction r22, final android.view.SurfaceControl.Transaction r23, final java.lang.Runnable r24, java.util.List<java.util.function.Consumer<android.view.SurfaceControl.Transaction>> r25) {
        /*
            Method dump skipped, instructions count: 1504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.activityembedding.ActivityEmbeddingAnimationRunner.createAnimator(android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, java.lang.Runnable, java.util.List):android.animation.Animator");
    }
}
