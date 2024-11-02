package com.android.wm.shell.freeform;

import android.view.animation.Animation;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class FreeformContainerView$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FreeformContainerView f$0;

    public /* synthetic */ FreeformContainerView$$ExternalSyntheticLambda0(FreeformContainerView freeformContainerView, int i) {
        this.$r8$classId = i;
        this.f$0 = freeformContainerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                final FreeformContainerView freeformContainerView = this.f$0;
                float[] fArr = FreeformContainerView.TAIL_ICON_ALPHA_ARRAY;
                freeformContainerView.updateIconsPosition();
                Animation.AnimationListener animationListener = 
                /*  JADX ERROR: Method code generation error
                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0010: CONSTRUCTOR (r0v4 'animationListener' android.view.animation.Animation$AnimationListener) = (r13v3 'freeformContainerView' com.android.wm.shell.freeform.FreeformContainerView A[DONT_INLINE]) A[DECLARE_VAR, MD:(com.android.wm.shell.freeform.FreeformContainerView):void (m)] (LINE:17) call: com.android.wm.shell.freeform.FreeformContainerView.5.<init>(com.android.wm.shell.freeform.FreeformContainerView):void type: CONSTRUCTOR in method: com.android.wm.shell.freeform.FreeformContainerView$$ExternalSyntheticLambda0.run():void, file: classes2.dex
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.android.wm.shell.freeform.FreeformContainerView, state: NOT_LOADED
                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:304)
                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:781)
                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                    	... 21 more
                    */
                /*
                    this = this;
                    int r0 = r13.$r8$classId
                    r1 = 0
                    switch(r0) {
                        case 0: goto L7;
                        default: goto L6;
                    }
                L6:
                    goto L71
                L7:
                    com.android.wm.shell.freeform.FreeformContainerView r13 = r13.f$0
                    float[] r0 = com.android.wm.shell.freeform.FreeformContainerView.TAIL_ICON_ALPHA_ARRAY
                    r13.updateIconsPosition()
                    com.android.wm.shell.freeform.FreeformContainerView$5 r0 = new com.android.wm.shell.freeform.FreeformContainerView$5
                    r0.<init>(r13)
                    android.graphics.Rect r2 = r13.mTmpBounds
                    r13.getPointerViewBounds(r2)
                    android.view.ViewGroup r2 = r13.mPointerGroupView
                    android.graphics.Rect r3 = r13.mTmpBounds
                    float r10 = r3.exactCenterX()
                    android.graphics.Rect r3 = r13.mTmpBounds
                    float r12 = r3.exactCenterY()
                    android.view.animation.AnimationSet r3 = new android.view.animation.AnimationSet
                    r3.<init>(r1)
                    android.view.animation.ScaleAnimation r1 = new android.view.animation.ScaleAnimation
                    r5 = 1056964608(0x3f000000, float:0.5)
                    r6 = 1065353216(0x3f800000, float:1.0)
                    r7 = 1056964608(0x3f000000, float:0.5)
                    r9 = 0
                    r11 = 0
                    r8 = 1065353216(0x3f800000, float:1.0)
                    r4 = r1
                    r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)
                    r4 = 350(0x15e, double:1.73E-321)
                    r1.setDuration(r4)
                    android.view.animation.OvershootInterpolator r6 = new android.view.animation.OvershootInterpolator
                    r7 = 1077936128(0x40400000, float:3.0)
                    r6.<init>(r7)
                    r1.setInterpolator(r6)
                    r3.addAnimation(r1)
                    android.view.animation.AlphaAnimation r1 = new android.view.animation.AlphaAnimation
                    r6 = 1036831949(0x3dcccccd, float:0.1)
                    r7 = 1065353216(0x3f800000, float:1.0)
                    r1.<init>(r6, r7)
                    r1.setDuration(r4)
                    android.view.animation.PathInterpolator r4 = com.samsung.android.util.InterpolatorUtils.SINE_IN_OUT_70
                    r1.setInterpolator(r4)
                    r3.addAnimation(r1)
                    r4 = 100
                    r3.setStartOffset(r4)
                    r3.setAnimationListener(r0)
                    r2.startAnimation(r3)
                    r0 = 1
                    r13.mPointerSettleDownEffectRequested = r0
                    return
                L71:
                    com.android.wm.shell.freeform.FreeformContainerView r13 = r13.f$0
                    r13.mIsAppIconMoving = r1
                    android.graphics.Rect r0 = r13.mTmpBounds
                    r13.getPointerViewBounds(r0)
                    com.android.wm.shell.freeform.FreeformContainerViewController r0 = r13.mViewController
                    android.view.ViewGroup r1 = r13.mPointerGroupView
                    android.graphics.Rect r13 = r13.mTmpBounds
                    r2 = 0
                    r0.hideDismissButtonAndDismissIcon(r2, r1, r13)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.freeform.FreeformContainerView$$ExternalSyntheticLambda0.run():void");
            }
        }
