package com.android.systemui.decor;

import android.content.Context;
import android.util.Size;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.systemui.RegionInterceptingFrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class RoundedCornerDecorProviderImpl extends CornerDecorProvider {
    public final int alignedBound1;
    public final int alignedBound2;
    public final boolean isTop = getAlignedBounds().contains(1);
    public final RoundedCornerResDelegate roundedCornerResDelegate;
    public final int viewId;

    public RoundedCornerDecorProviderImpl(int i, int i2, int i3, RoundedCornerResDelegate roundedCornerResDelegate) {
        this.viewId = i;
        this.alignedBound1 = i2;
        this.alignedBound2 = i3;
        this.roundedCornerResDelegate = roundedCornerResDelegate;
    }

    @Override // com.android.systemui.decor.CornerDecorProvider
    public final int getAlignedBound1() {
        return this.alignedBound1;
    }

    @Override // com.android.systemui.decor.CornerDecorProvider
    public final int getAlignedBound2() {
        return this.alignedBound2;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final int getViewId() {
        return this.viewId;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final View inflateView(Context context, RegionInterceptingFrameLayout regionInterceptingFrameLayout, int i, int i2) {
        Size size;
        ImageView imageView = new ImageView(context);
        imageView.setId(this.viewId);
        initView(imageView, i, i2);
        boolean z = this.isTop;
        RoundedCornerResDelegate roundedCornerResDelegate = this.roundedCornerResDelegate;
        if (z) {
            size = roundedCornerResDelegate.topRoundedSize;
        } else {
            size = roundedCornerResDelegate.bottomRoundedSize;
        }
        regionInterceptingFrameLayout.addView(imageView, new FrameLayout.LayoutParams(size.getWidth(), size.getHeight(), RoundedCornerDecorProviderImplKt.access$toLayoutGravity(this.alignedBound2, i) | RoundedCornerDecorProviderImplKt.access$toLayoutGravity(this.alignedBound1, i)));
        return imageView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        if (r6 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005a, code lost:
    
        if (r6 != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
    
        if (r6 != false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0076, code lost:
    
        if (r6 != false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initView(android.widget.ImageView r7, int r8, int r9) {
        /*
            r6 = this;
            com.android.systemui.decor.RoundedCornerResDelegate r0 = r6.roundedCornerResDelegate
            boolean r1 = r6.isTop
            if (r1 == 0) goto L9
            android.graphics.drawable.Drawable r0 = r0.topRoundedDrawable
            goto Lb
        L9:
            android.graphics.drawable.Drawable r0 = r0.bottomRoundedDrawable
        Lb:
            if (r0 == 0) goto L11
            r7.setImageDrawable(r0)
            goto L1d
        L11:
            if (r1 == 0) goto L17
            r0 = 2131234529(0x7f080ee1, float:1.8085226E38)
            goto L1a
        L17:
            r0 = 2131234526(0x7f080ede, float:1.808522E38)
        L1a:
            r7.setImageResource(r0)
        L1d:
            java.util.List r6 = r6.getAlignedBounds()
            r0 = 1
            java.lang.Integer r1 = java.lang.Integer.valueOf(r0)
            boolean r1 = r6.contains(r1)
            r2 = 0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            boolean r6 = r6.contains(r2)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
            r3 = 0
            r4 = 1065353216(0x3f800000, float:1.0)
            if (r8 == 0) goto L6b
            if (r8 == r0) goto L5d
            r0 = 3
            if (r8 == r0) goto L4e
            if (r1 == 0) goto L44
            if (r6 == 0) goto L44
            goto L7c
        L44:
            if (r1 == 0) goto L49
            if (r6 != 0) goto L49
            goto L78
        L49:
            if (r1 != 0) goto L7e
            if (r6 == 0) goto L7e
            goto L7f
        L4e:
            if (r1 == 0) goto L53
            if (r6 == 0) goto L53
            goto L7f
        L53:
            if (r1 == 0) goto L58
            if (r6 != 0) goto L58
            goto L7c
        L58:
            if (r1 != 0) goto L78
            if (r6 != 0) goto L7e
            goto L78
        L5d:
            if (r1 == 0) goto L62
            if (r6 == 0) goto L62
            goto L78
        L62:
            if (r1 == 0) goto L66
            if (r6 == 0) goto L7e
        L66:
            if (r1 != 0) goto L7f
            if (r6 == 0) goto L7f
            goto L7c
        L6b:
            if (r1 == 0) goto L6f
            if (r6 != 0) goto L7e
        L6f:
            if (r1 == 0) goto L74
            if (r6 != 0) goto L74
            goto L7f
        L74:
            if (r1 != 0) goto L7c
            if (r6 == 0) goto L7c
        L78:
            r5 = r4
            r4 = r2
            r2 = r5
            goto L7f
        L7c:
            r3 = 1127481344(0x43340000, float:180.0)
        L7e:
            r2 = r4
        L7f:
            r7.setRotation(r3)
            r7.setScaleX(r2)
            r7.setScaleY(r4)
            android.content.res.ColorStateList r6 = android.content.res.ColorStateList.valueOf(r9)
            r7.setImageTintList(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.decor.RoundedCornerDecorProviderImpl.initView(android.widget.ImageView, int, int):void");
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final void onReloadResAndMeasure(View view, int i, int i2, int i3, String str) {
        Size size;
        Integer valueOf = Integer.valueOf(i);
        RoundedCornerResDelegate roundedCornerResDelegate = this.roundedCornerResDelegate;
        roundedCornerResDelegate.updateDisplayUniqueId(str, valueOf);
        ImageView imageView = (ImageView) view;
        initView(imageView, i2, i3);
        if (this.isTop) {
            size = roundedCornerResDelegate.topRoundedSize;
        } else {
            size = roundedCornerResDelegate.bottomRoundedSize;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = size.getWidth();
        layoutParams.height = size.getHeight();
        layoutParams.gravity = RoundedCornerDecorProviderImplKt.access$toLayoutGravity(this.alignedBound2, i2) | RoundedCornerDecorProviderImplKt.access$toLayoutGravity(this.alignedBound1, i2);
        view.setLayoutParams(layoutParams);
    }
}
