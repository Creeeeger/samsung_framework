package androidx.appcompat.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TooltipPopup {
    public final View mContentView;
    public final Context mContext;
    public final WindowManager.LayoutParams mLayoutParams;
    public final TextView mMessageView;
    public int mNavigationBarHeight;
    public final int[] mTmpAnchorPos;
    public final int[] mTmpAppPos;
    public final Rect mTmpDisplayFrame;

    public TooltipPopup(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams = layoutParams;
        this.mTmpDisplayFrame = new Rect();
        this.mTmpAnchorPos = new int[2];
        this.mTmpAppPos = new int[2];
        this.mNavigationBarHeight = 0;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.popupTheme, typedValue, false);
        if (typedValue.data != 0) {
            this.mContext = new ContextThemeWrapper(context, typedValue.data);
        } else {
            this.mContext = context;
        }
        View inflate = LayoutInflater.from(this.mContext).inflate(com.android.systemui.R.layout.sesl_tooltip, (ViewGroup) null);
        this.mContentView = inflate;
        this.mMessageView = (TextView) inflate.findViewById(com.android.systemui.R.id.message);
        inflate.setOnTouchListener(new View.OnTouchListener() { // from class: androidx.appcompat.widget.TooltipPopup.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action != 4) {
                        return false;
                    }
                    TooltipPopup.this.hide();
                    return false;
                }
                TooltipPopup.this.hide();
                return true;
            }
        });
        layoutParams.setTitle("TooltipPopup");
        layoutParams.packageName = this.mContext.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = 2132017161;
        layoutParams.flags = 262152;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int adjustTooltipPosition(int r10, int r11, int r12) {
        /*
            r9 = this;
            android.content.Context r0 = r9.mContext
            java.lang.String r1 = "window"
            java.lang.Object r2 = r0.getSystemService(r1)
            android.view.WindowManager r2 = (android.view.WindowManager) r2
            android.view.Display r2 = r2.getDefaultDisplay()
            int r2 = r2.getRotation()
            android.content.res.Resources r3 = r0.getResources()
            android.graphics.Point r4 = new android.graphics.Point
            r4.<init>()
            java.lang.Object r0 = r0.getSystemService(r1)
            android.view.WindowManager r0 = (android.view.WindowManager) r0
            android.view.Display r0 = r0.getDefaultDisplay()
            r0.getRealSize(r4)
            int r0 = r0.getRotation()
            r1 = 2131169420(0x7f07108c, float:1.795317E38)
            float r1 = r3.getDimension(r1)
            int r1 = (int) r1
            r3 = 3
            r5 = 1
            android.graphics.Rect r6 = r9.mTmpDisplayFrame
            if (r0 != r5) goto L48
            int r7 = r6.right
            int r8 = r7 + r1
            int r4 = r4.x
            if (r8 < r4) goto L48
            int r4 = r4 - r7
            r9.mNavigationBarHeight = r4
        L46:
            r0 = r5
            goto L52
        L48:
            if (r0 != r3) goto L51
            int r0 = r6.left
            if (r0 > r1) goto L51
            r9.mNavigationBarHeight = r0
            goto L46
        L51:
            r0 = 0
        L52:
            if (r0 == 0) goto L82
            if (r2 != r5) goto L66
            int r0 = r6.width()
            int r0 = r0 - r11
            int r9 = r9.mNavigationBarHeight
            int r0 = r0 - r9
            int r0 = r0 / 2
            int r0 = r0 - r12
            if (r10 <= r0) goto La1
            int r10 = r0 - r12
            goto La1
        L66:
            if (r2 != r3) goto La1
            if (r10 > 0) goto L77
            int r9 = r6.width()
            int r11 = r11 - r9
            int r11 = r11 / 2
            int r11 = r11 + r12
            if (r10 > r11) goto La1
            int r11 = r11 + r12
            r10 = r11
            goto La1
        L77:
            int r9 = r6.width()
            int r9 = r9 - r11
            int r9 = r9 / 2
            int r9 = r9 + r12
            if (r10 <= r9) goto La1
            goto L9f
        L82:
            if (r2 == r5) goto L86
            if (r2 != r3) goto La1
        L86:
            if (r10 > 0) goto L95
            int r9 = r6.width()
            int r11 = r11 - r9
            int r11 = r11 / 2
            int r11 = r11 + r12
            if (r10 >= r11) goto La1
            int r10 = r11 + r12
            goto La1
        L95:
            int r9 = r6.width()
            int r9 = r9 - r11
            int r9 = r9 / 2
            int r9 = r9 + r12
            if (r10 <= r9) goto La1
        L9f:
            int r10 = r9 - r12
        La1:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.TooltipPopup.adjustTooltipPosition(int, int, int):int");
    }

    public final void computePosition(View view, boolean z, WindowManager.LayoutParams layoutParams, boolean z2, boolean z3) {
        int i;
        int i2;
        layoutParams.token = view.getApplicationWindowToken();
        int width = view.getWidth() / 2;
        layoutParams.gravity = 49;
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context = view.getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof Activity) {
                    rootView = ((Activity) context).getWindow().getDecorView();
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        if (rootView == null) {
            Log.e("SESL_TooltipPopup", "Cannot find app view");
            return;
        }
        Rect rect = this.mTmpDisplayFrame;
        rootView.getWindowVisibleDisplayFrame(rect);
        int i3 = rect.left;
        Context context2 = this.mContext;
        if (i3 < 0 && rect.top < 0) {
            Resources resources = context2.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            if (identifier != 0) {
                i2 = resources.getDimensionPixelSize(identifier);
            } else {
                i2 = 0;
            }
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            rect.set(0, i2, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        int[] iArr = new int[2];
        rootView.getLocationOnScreen(iArr);
        int i4 = iArr[0];
        Rect rect2 = new Rect(i4, iArr[1], rootView.getWidth() + i4, rootView.getHeight() + iArr[1]);
        rect.left = rect2.left;
        rect.right = rect2.right;
        int[] iArr2 = this.mTmpAppPos;
        rootView.getLocationOnScreen(iArr2);
        int[] iArr3 = this.mTmpAnchorPos;
        view.getLocationOnScreen(iArr3);
        Log.i("SESL_TooltipPopup", "computePosition - displayFrame left : " + rect.left);
        Log.i("SESL_TooltipPopup", "computePosition - displayFrame right : " + rect.right);
        Log.i("SESL_TooltipPopup", "computePosition - displayFrame top : " + rect.top);
        Log.i("SESL_TooltipPopup", "computePosition - displayFrame bottom : " + rect.bottom);
        Log.i("SESL_TooltipPopup", "computePosition - anchorView locationOnScreen x: " + iArr3[0]);
        Log.i("SESL_TooltipPopup", "computePosition - anchorView locationOnScreen y : " + iArr3[1]);
        Log.i("SESL_TooltipPopup", "computePosition - appView locationOnScreen x : " + iArr2[0]);
        TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("computePosition - appView locationOnScreen y : "), iArr2[1], "SESL_TooltipPopup");
        int i5 = iArr3[0] - iArr2[0];
        iArr3[0] = i5;
        iArr3[1] = iArr3[1] - iArr2[1];
        layoutParams.x = (i5 + width) - (rect.width() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        View view2 = this.mContentView;
        view2.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = view2.getMeasuredHeight();
        int measuredWidth = view2.getMeasuredWidth();
        int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.sesl_hover_tooltip_popup_right_margin);
        int dimensionPixelOffset2 = context2.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.sesl_hover_tooltip_popup_area_margin);
        int i6 = iArr3[1];
        int i7 = i6 - measuredHeight;
        int height = view.getHeight() + i6;
        if (z) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api17Impl.getLayoutDirection(view) == 0) {
                int i8 = measuredWidth / 2;
                int width2 = (((view.getWidth() + iArr3[0]) - (rect.width() / 2)) - i8) - dimensionPixelOffset;
                layoutParams.x = width2;
                if (width2 < ((-rect.width()) / 2) + i8) {
                    layoutParams.x = ((-rect.width()) / 2) + i8 + dimensionPixelOffset;
                }
                layoutParams.x = adjustTooltipPosition(layoutParams.x, measuredWidth, dimensionPixelOffset);
            } else {
                int width3 = (measuredWidth / 2) + ((iArr3[0] + width) - (rect.width() / 2)) + dimensionPixelOffset;
                layoutParams.x = width3;
                layoutParams.x = adjustTooltipPosition(width3, measuredWidth, dimensionPixelOffset);
            }
            if (height + measuredHeight > rect.height()) {
                layoutParams.y = i7;
            } else {
                layoutParams.y = height;
            }
        } else {
            int width4 = (iArr3[0] + width) - (rect.width() / 2);
            layoutParams.x = width4;
            int i9 = measuredWidth / 2;
            if (width4 < ((-rect.width()) / 2) + i9) {
                layoutParams.x = ((-rect.width()) / 2) + i9 + dimensionPixelOffset2;
            }
            layoutParams.x = adjustTooltipPosition(layoutParams.x, measuredWidth, dimensionPixelOffset);
            if (i7 >= 0) {
                i = i7;
            } else {
                i = height;
            }
            layoutParams.y = i;
        }
        if (z2) {
            layoutParams.y = view.getHeight() + iArr3[1];
        }
        if (z3) {
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            if (ViewCompat.Api17Impl.getLayoutDirection(view) == 0) {
                int i10 = measuredWidth / 2;
                int width5 = (((view.getWidth() + iArr3[0]) - (rect.width() / 2)) - i10) - dimensionPixelOffset;
                layoutParams.x = width5;
                if (width5 < ((-rect.width()) / 2) + i10) {
                    layoutParams.x = ((-rect.width()) / 2) + i10 + dimensionPixelOffset2;
                }
                layoutParams.x = adjustTooltipPosition(layoutParams.x, measuredWidth, dimensionPixelOffset);
            } else {
                int width6 = ((measuredWidth / 2) + ((iArr3[0] + width) - (rect.width() / 2))) - dimensionPixelOffset;
                layoutParams.x = width6;
                layoutParams.x = adjustTooltipPosition(width6, measuredWidth, dimensionPixelOffset);
            }
            if (measuredHeight + height <= rect.height()) {
                i7 = height;
            }
            layoutParams.y = i7;
        }
    }

    public final void hide() {
        if (!isShowing()) {
            return;
        }
        ((WindowManager) this.mContext.getSystemService("window")).removeView(this.mContentView);
    }

    public final boolean isShowing() {
        if (this.mContentView.getParent() != null) {
            return true;
        }
        return false;
    }
}
