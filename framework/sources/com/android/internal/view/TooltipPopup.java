package com.android.internal.view;

import android.app.WindowConfiguration;
import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.widget.TextView;
import com.android.internal.R;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.rune.ViewRune;

/* loaded from: classes5.dex */
public class TooltipPopup {
    private static final String TAG = "TooltipPopup";
    private View mAnchorView;
    private View mContentView;
    private Context mContext;
    private boolean mFromTouch;
    private boolean mIsCaptionMenuButton;
    private boolean mIsCaptionPopupButton;
    private final boolean mIsDeviceDefault;
    private boolean mIsDexMode;
    private boolean mIsDexStandAlone;
    private int mLastOrientation;
    private final WindowManager.LayoutParams mLayoutParams;
    private final TextView mMessageView;
    private final View.OnLayoutChangeListener mOnLayoutChangeListener;
    private final int[] mTmpAnchorPos;
    private final int[] mTmpAppPos;
    private final Rect mTmpDisplayFrame;
    private CharSequence mTooltipText;
    private int mX;
    private int mY;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        int orientation = v.getResources().getConfiguration().orientation;
        if (this.mLastOrientation != orientation && this.mContentView != null && isShowing()) {
            this.mLastOrientation = orientation;
            show(this.mAnchorView, this.mX, this.mY, this.mFromTouch, this.mTooltipText);
        }
    }

    public TooltipPopup(Context context) {
        this.mContentView = null;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.mLayoutParams = layoutParams;
        this.mTmpDisplayFrame = new Rect();
        this.mTmpAnchorPos = new int[2];
        this.mTmpAppPos = new int[2];
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.android.internal.view.TooltipPopup$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                TooltipPopup.this.lambda$new$0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        };
        this.mIsDexMode = false;
        this.mIsDexStandAlone = false;
        this.mIsCaptionMenuButton = false;
        this.mIsCaptionPopupButton = false;
        this.mContext = context;
        TypedValue outValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.parentIsDeviceDefault, outValue, true);
        boolean z = outValue.data != 0;
        this.mIsDeviceDefault = z;
        this.mContext = context;
        if (z) {
            context.getTheme().resolveAttribute(16843945, outValue, false);
            if (outValue.data != 0) {
                this.mContext = new ContextThemeWrapper(context, outValue.data);
            }
        }
        View inflate = z ? LayoutInflater.from(this.mContext).inflate(R.layout.sem_tooltip, (ViewGroup) null) : LayoutInflater.from(this.mContext).inflate(R.layout.tooltip, (ViewGroup) null);
        this.mContentView = inflate;
        this.mMessageView = (TextView) inflate.findViewById(16908299);
        this.mLastOrientation = context.getResources().getConfiguration().orientation;
        layoutParams.setTitle(this.mContext.getString(R.string.tooltip_popup_title));
        layoutParams.packageName = this.mContext.getOpPackageName();
        layoutParams.type = 1005;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_Tooltip;
        layoutParams.flags = 24;
    }

    public void show(View anchorView, int anchorX, int anchorY, boolean fromTouch, CharSequence tooltipText) {
        if (ViewRune.WIDGET_HOVER_POPUP && anchorView == null) {
            Log.e(TAG, "show - anchorView is null");
            return;
        }
        this.mAnchorView = anchorView;
        this.mX = anchorX;
        this.mY = anchorY;
        this.mFromTouch = fromTouch;
        this.mTooltipText = tooltipText;
        View view = this.mContentView;
        if (view != null) {
            view.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        }
        ViewRootImpl viewRootImpl = anchorView.getViewRootImpl();
        this.mIsDexMode = viewRootImpl != null && viewRootImpl.isDesktopMode();
        this.mIsDexStandAlone = viewRootImpl != null && viewRootImpl.isDesktopModeStandAlone();
        if (ViewRune.WIDGET_HOVER_POPUP && !fromTouch) {
            int hoverPopupType = anchorView.semGetHoverPopupType();
            if (hoverPopupType == 3) {
                return;
            }
        }
        if (isShowing()) {
            hide();
        }
        this.mMessageView.setText(tooltipText);
        computePosition(anchorView, anchorX, anchorY, fromTouch, this.mLayoutParams);
        if (CoreRune.MW_CAPTION_SHELL && (this.mIsCaptionMenuButton || this.mIsCaptionPopupButton)) {
            this.mLayoutParams.multiwindowFlags |= 8;
            if (this.mIsCaptionPopupButton) {
                this.mLayoutParams.multiwindowFlags |= 2;
            }
        }
        WindowManager wm = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        wm.addView(this.mContentView, this.mLayoutParams);
    }

    public void hide() {
        View view = this.mContentView;
        if (view != null) {
            view.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        }
        if (!isShowing()) {
            return;
        }
        WindowManager wm = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        wm.removeView(this.mContentView);
    }

    public View getContentView() {
        return this.mContentView;
    }

    public boolean isShowing() {
        return this.mContentView.getParent() != null;
    }

    private void computePosition(View anchorView, int anchorX, int anchorY, boolean fromTouch, WindowManager.LayoutParams outParams) {
        int offsetX;
        int offsetAbove;
        int offsetBelow;
        View appView;
        int leftInset;
        outParams.token = anchorView.getApplicationWindowToken();
        int tooltipPreciseAnchorThreshold = this.mContext.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (this.mIsDeviceDefault) {
            offsetX = anchorView.getWidth() / 2;
        } else {
            int offsetX2 = anchorView.getWidth();
            if (offsetX2 >= tooltipPreciseAnchorThreshold) {
                offsetX = anchorX;
            } else {
                int offsetX3 = anchorView.getWidth();
                offsetX = offsetX3 / 2;
            }
        }
        if (anchorView.getHeight() >= tooltipPreciseAnchorThreshold) {
            int offsetExtra = this.mContext.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            int offsetBelow2 = anchorY + offsetExtra;
            int offsetAbove2 = anchorY - offsetExtra;
            offsetAbove = offsetAbove2;
            offsetBelow = offsetBelow2;
        } else {
            int offsetBelow3 = anchorView.getHeight();
            offsetAbove = 0;
            offsetBelow = offsetBelow3;
        }
        outParams.gravity = 49;
        int tooltipOffset = this.mContext.getResources().getDimensionPixelOffset(fromTouch ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
        View appView2 = WindowManagerGlobal.getInstance().getWindowView(anchorView.getApplicationWindowToken());
        if (appView2 != null) {
            appView = appView2;
        } else {
            ViewRootImpl viewRootImpl = anchorView.getViewRootImpl();
            if (viewRootImpl == null) {
                Slog.e(TAG, "Cannot find app view");
                return;
            }
            appView = viewRootImpl.getView();
        }
        appView.getWindowVisibleDisplayFrame(this.mTmpDisplayFrame);
        WindowInsets insets = appView.getRootWindowInsets();
        if (insets == null) {
            leftInset = 0;
        } else {
            int leftInset2 = insets.getSystemWindowInsetLeft();
            Log.i(TAG, "left inset = " + leftInset2);
            leftInset = leftInset2;
        }
        int[] appViewScreenPos = new int[2];
        appView.getLocationOnScreen(appViewScreenPos);
        Rect displayFrame = new Rect(appViewScreenPos[0], appViewScreenPos[1], appViewScreenPos[0] + appView.getWidth(), appViewScreenPos[1] + appView.getHeight());
        this.mTmpDisplayFrame.left = displayFrame.left + leftInset;
        this.mTmpDisplayFrame.right = displayFrame.right;
        appView.getLocationOnScreen(this.mTmpAppPos);
        anchorView.getLocationOnScreen(this.mTmpAnchorPos);
        if (ViewRune.COMMON_IS_PRODUCT_DEV) {
            Log.i(TAG, "computePosition - displayFrame left : " + this.mTmpDisplayFrame.left);
            Log.i(TAG, "computePosition - displayFrame right : " + this.mTmpDisplayFrame.right);
            Log.i(TAG, "computePosition - displayFrame top : " + this.mTmpDisplayFrame.top);
            Log.i(TAG, "computePosition - displayFrame bottom : " + this.mTmpDisplayFrame.bottom);
            Log.i(TAG, "computePosition - anchorView locationOnScreen x : " + this.mTmpAnchorPos[0]);
            Log.i(TAG, "computePosition - anchorView locationOnScreen y : " + this.mTmpAnchorPos[1]);
            Log.i(TAG, "computePosition - appView locationOnScreen x : " + this.mTmpAppPos[0]);
            Log.i(TAG, "computePosition - appView locationOnScreen y : " + this.mTmpAppPos[1]);
        }
        int[] iArr = this.mTmpAnchorPos;
        int i = iArr[0];
        int[] iArr2 = this.mTmpAppPos;
        int i2 = i - iArr2[0];
        iArr[0] = i2;
        iArr[1] = iArr[1] - iArr2[1];
        if (this.mIsDeviceDefault) {
            semUpdateMaxWidth();
            semComputePositionForMultiWindow(anchorView, displayFrame, fromTouch, offsetX, leftInset, outParams);
            return;
        }
        outParams.x = (i2 + offsetX) - (displayFrame.width() / 2);
        int spec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.mContentView.measure(spec, spec);
        int tooltipHeight = this.mContentView.getMeasuredHeight();
        int i3 = this.mTmpAnchorPos[1];
        int yAbove = ((i3 + offsetAbove) - tooltipOffset) - tooltipHeight;
        int yBelow = i3 + offsetBelow + tooltipOffset;
        if (!fromTouch) {
            if (yBelow + tooltipHeight <= this.mTmpDisplayFrame.height()) {
                outParams.y = yBelow;
                return;
            } else {
                outParams.y = yAbove;
                return;
            }
        }
        if (yAbove >= 0) {
            outParams.y = yAbove;
        } else {
            outParams.y = yBelow;
        }
    }

    private void semUpdateMaxWidth() {
        TypedValue mTmpValue = new TypedValue();
        this.mContext.getResources().getValue(R.dimen.sem_config_prefDialogWidth, mTmpValue, true);
        int tooltipMaxWidth = 0;
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        if (mTmpValue.type == 5) {
            tooltipMaxWidth = (int) mTmpValue.getDimension(displayMetrics);
        } else if (mTmpValue.type == 6) {
            tooltipMaxWidth = (int) mTmpValue.getFraction(displayMetrics.widthPixels, displayMetrics.widthPixels);
        }
        int mMessageViewMaxWidth = tooltipMaxWidth;
        if (this.mContentView.getBackground() != null) {
            mMessageViewMaxWidth -= this.mContentView.getPaddingLeft() + this.mContentView.getPaddingRight();
        }
        this.mMessageView.setMaxWidth(mMessageViewMaxWidth);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0329  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void semComputePositionForMultiWindow(android.view.View r30, android.graphics.Rect r31, boolean r32, int r33, int r34, android.view.WindowManager.LayoutParams r35) {
        /*
            Method dump skipped, instructions count: 845
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.view.TooltipPopup.semComputePositionForMultiWindow(android.view.View, android.graphics.Rect, boolean, int, int, android.view.WindowManager$LayoutParams):void");
    }

    private boolean isFreeForm() {
        int windowMode = this.mContext.getResources().getConfiguration().windowConfiguration.getWindowingMode();
        return windowMode == 5;
    }

    private boolean isFullScreen() {
        WindowConfiguration windowConfiguration = this.mContext.getResources().getConfiguration().windowConfiguration;
        return windowConfiguration.hasWindowDecorCaption() && windowConfiguration.getWindowingMode() == 1;
    }

    private boolean isSplitWindow() {
        return WindowConfiguration.isSplitScreenWindowingMode(this.mContext.getResources().getConfiguration().windowConfiguration);
    }

    private boolean isEmbedded() {
        return this.mContext.getResources().getConfiguration().windowConfiguration.isEmbedded();
    }

    public void semShowActionItemTooltip(int x, int y, int layoutDirection, CharSequence tooltipText) {
        if (isShowing()) {
            hide();
        }
        this.mMessageView.setText(tooltipText);
        this.mLayoutParams.x = x;
        this.mLayoutParams.y = y;
        if (layoutDirection == 0) {
            this.mLayoutParams.gravity = 8388661;
        } else {
            this.mLayoutParams.gravity = 8388659;
        }
        WindowManager wm = (WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE);
        wm.addView(this.mContentView, this.mLayoutParams);
    }

    public void setForCaptionMenuButton() {
        this.mIsCaptionMenuButton = true;
    }

    public void setForCaptionPopupButton() {
        this.mIsCaptionPopupButton = true;
    }
}
