package com.android.systemui.qs.tileimpl;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.animation.LaunchableView;
import com.android.systemui.animation.LaunchableViewDelegate;
import com.android.systemui.plugins.qs.QSIconView;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.SecQSPanelResourcePicker;
import com.android.systemui.util.DeviceState;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecQSTileBaseView extends QSTileView implements LaunchableView {
    public boolean isDetailViewAvailable;
    public String mAccessibilityClass;
    public final ImageView mBg;
    public int mCircleColor;
    public final boolean mCollapsedView;
    public int mColorActive;
    public int mColorDisabled;
    public int mColorInactive;
    public final LaunchableViewDelegate mDelegate;
    public final ArrayList mDetailViewList;
    public final H mHandler;
    public final QSIconView mIcon;
    public final FrameLayout mIconFrame;
    public int mLastState;
    public CharSequence mLastStateDescription;
    public final int[] mLocInScreen;
    public int mOrientation;
    public QSTile.State mQSTileState;
    public RippleDrawable mRipple;
    public int mScreenLayout;
    public int mSemDisplayDeviceType;
    public CharSequence mStateDescriptionDeltas;
    public final float mStrokeWidthActive;
    public final float mStrokeWidthInactive;
    public final Drawable mTileBackground;
    public String mTileSpec;
    public boolean mTileState;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public H() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                SecQSTileBaseView.this.handleStateChanged((QSTile.State) message.obj);
            }
        }
    }

    public static /* synthetic */ Unit $r8$lambda$At0CU0hnXD3S0omAKRLn1Z_WouQ(SecQSTileBaseView secQSTileBaseView, Integer num) {
        secQSTileBaseView.getClass();
        super.setVisibility(num.intValue());
        return Unit.INSTANCE;
    }

    public SecQSTileBaseView(Context context, QSIconView qSIconView) {
        this(context, qSIconView, false);
    }

    public int getCircleColor(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    NestedScrollView$$ExternalSyntheticOutline0.m("Invalid state ", i, "QSTileBaseView");
                    return 0;
                }
                return this.mColorActive;
            }
            return this.mColorDisabled;
        }
        return this.mColorInactive;
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public int getDetailY() {
        return (getHeight() / 2) + getTop();
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public final QSIconView getIcon() {
        return this.mIcon;
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public final View getIconWithBackground() {
        return this.mIconFrame;
    }

    public Drawable getTileBackground() {
        return this.mTileBackground;
    }

    public void handleStateChanged(QSTile.State state) {
        boolean z;
        String str;
        int i;
        boolean z2 = true;
        if (this.mBg.getDrawable() instanceof ShapeDrawable) {
            ShapeDrawable shapeDrawable = (ShapeDrawable) this.mBg.getDrawable();
            shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
            int i2 = state.state;
            if (i2 != 1) {
                if (i2 == 2 && this.mStrokeWidthActive >= 0.0f) {
                    shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
                    shapeDrawable.getPaint().setStrokeWidth(this.mStrokeWidthActive);
                }
            } else if (this.mStrokeWidthInactive >= 0.0f) {
                shapeDrawable.getPaint().setStyle(Paint.Style.STROKE);
                shapeDrawable.getPaint().setStrokeWidth(this.mStrokeWidthInactive);
            }
        }
        int circleColor = getCircleColor(state.state);
        if (state.isNonBGTile) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sec_style_qs_no_bg_tile_icon_size);
            ViewGroup.LayoutParams layoutParams = this.mBg.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = dimensionPixelSize;
            this.mBg.setLayoutParams(layoutParams);
            circleColor = 0;
        }
        if (circleColor != this.mCircleColor) {
            this.mBg.setImageTintList(ColorStateList.valueOf(circleColor));
            this.mCircleColor = circleColor;
        }
        if (state.state != 0) {
            z = true;
        } else {
            z = false;
        }
        super.setClickable(z);
        setLongClickable(state.handlesLongClick);
        this.mIcon.setIcon(state, true);
        StringBuilder sb = new StringBuilder();
        String str2 = this.mTileSpec;
        if (str2 != null && !str2.contains("SoundMode")) {
            int i3 = state.state;
            if (i3 != 1) {
                if (i3 == 2) {
                    sb.append(((LinearLayout) this).mContext.getString(R.string.switch_bar_on));
                }
            } else {
                sb.append(((LinearLayout) this).mContext.getString(R.string.switch_bar_off));
            }
            if (!TextUtils.isEmpty(state.stateDescription)) {
                sb.append(", ");
                sb.append(state.stateDescription);
                int i4 = this.mLastState;
                if (i4 != -1 && state.state == i4 && !state.stateDescription.equals(this.mLastStateDescription)) {
                    this.mStateDescriptionDeltas = state.stateDescription;
                }
            }
        } else {
            sb.append(((LinearLayout) this).mContext.getString(R.string.switch_bar_on));
        }
        setStateDescription(sb.toString());
        int i5 = state.state;
        this.mLastState = i5;
        this.mLastStateDescription = state.stateDescription;
        String str3 = null;
        if (i5 == 0) {
            str = null;
        } else {
            str = state.expandedAccessibilityClassName;
        }
        this.mAccessibilityClass = str;
        if (state instanceof QSTile.BooleanState) {
            boolean z3 = ((QSTile.BooleanState) state).value;
            if (this.mTileState != z3) {
                this.mTileState = z3;
            }
        } else {
            if (i5 != 2) {
                z2 = false;
            }
            this.mTileState = z2;
        }
        CharSequence charSequence = state.label;
        if (charSequence != null) {
            StringBuilder sb2 = new StringBuilder(charSequence.length());
            sb2.append(state.label);
            str3 = sb2.toString();
        }
        String string = getResources().getString(R.string.accessibility_button);
        if (state.contentDescription == null) {
            if (str3 != null) {
                Resources resources = getResources();
                if (this.mTileState) {
                    i = R.string.accessibility_desc_on;
                } else {
                    i = R.string.accessibility_desc_off;
                }
                String string2 = resources.getString(i);
                str3 = str3.replaceAll("\n", " ").replaceAll("-", "") + "," + string2 + "," + string;
            }
        } else {
            str3 = ((Object) state.contentDescription) + "," + string;
        }
        this.mIcon.setContentDescription(str3);
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda2] */
    @Override // com.android.systemui.plugins.qs.QSTileView
    public final void init(final QSTile qSTile) {
        final int i = 0;
        final int i2 = 1;
        init(new View.OnClickListener(this) { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda1
            public final /* synthetic */ SecQSTileBaseView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        SecQSTileBaseView secQSTileBaseView = this.f$0;
                        QSTile qSTile2 = qSTile;
                        secQSTileBaseView.getClass();
                        qSTile2.click(secQSTileBaseView);
                        return;
                    default:
                        SecQSTileBaseView secQSTileBaseView2 = this.f$0;
                        QSTile qSTile3 = qSTile;
                        secQSTileBaseView2.getClass();
                        qSTile3.secondaryClick(secQSTileBaseView2);
                        return;
                }
            }
        }, new View.OnClickListener(this) { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda1
            public final /* synthetic */ SecQSTileBaseView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        SecQSTileBaseView secQSTileBaseView = this.f$0;
                        QSTile qSTile2 = qSTile;
                        secQSTileBaseView.getClass();
                        qSTile2.click(secQSTileBaseView);
                        return;
                    default:
                        SecQSTileBaseView secQSTileBaseView2 = this.f$0;
                        QSTile qSTile3 = qSTile;
                        secQSTileBaseView2.getClass();
                        qSTile3.secondaryClick(secQSTileBaseView2);
                        return;
                }
            }
        }, new View.OnLongClickListener() { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                SecQSTileBaseView secQSTileBaseView = SecQSTileBaseView.this;
                QSTile qSTile2 = qSTile;
                secQSTileBaseView.getClass();
                qSTile2.longClick(secQSTileBaseView);
                return true;
            }
        });
        String tileSpec = qSTile.getTileSpec();
        this.mTileSpec = tileSpec;
        this.isDetailViewAvailable = this.mDetailViewList.contains(tileSpec);
    }

    public final Drawable newTileBackground() {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackgroundBorderless});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = this.mOrientation;
        int i2 = configuration.orientation;
        if (i != i2 || this.mScreenLayout != configuration.screenLayout || this.mSemDisplayDeviceType != configuration.semDisplayDeviceType) {
            this.mOrientation = i2;
            this.mScreenLayout = configuration.screenLayout;
            this.mSemDisplayDeviceType = configuration.semDisplayDeviceType;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (!TextUtils.isEmpty(this.mAccessibilityClass)) {
            accessibilityEvent.setClassName(this.mAccessibilityClass);
        }
        if (accessibilityEvent.getContentChangeTypes() == 64 && this.mStateDescriptionDeltas != null) {
            accessibilityEvent.getText().add(this.mStateDescriptionDeltas);
            this.mStateDescriptionDeltas = null;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setSelected(false);
        if (!TextUtils.isEmpty(this.mAccessibilityClass)) {
            accessibilityNodeInfo.setClassName(this.mAccessibilityClass);
            if (Switch.class.getName().equals(this.mAccessibilityClass)) {
                Resources resources = getResources();
                if (this.mTileState) {
                    i = R.string.switch_bar_on;
                } else {
                    i = R.string.switch_bar_off;
                }
                accessibilityNodeInfo.setText(resources.getString(i));
                accessibilityNodeInfo.setChecked(this.mTileState);
                accessibilityNodeInfo.setCheckable(true);
                if (isLongClickable()) {
                    accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK.getId(), getResources().getString(R.string.accessibility_long_click_tile)));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mRipple != null) {
            updateRippleSize();
        }
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public void onPanelModeChanged() {
        ImageView imageView;
        updateBackgroundColors();
        QSTile.State state = this.mQSTileState;
        if (state == null) {
            return;
        }
        int circleColor = getCircleColor(state.state);
        if (circleColor != this.mCircleColor && (imageView = this.mBg) != null) {
            imageView.setImageTintList(ColorStateList.valueOf(circleColor));
            this.mCircleColor = circleColor;
        }
        Drawable drawable = this.mTileBackground;
        if (drawable != null && (drawable instanceof RippleDrawable)) {
            ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(((LinearLayout) this).mContext.getColor(R.color.sec_qs_ripple_background)));
            this.mRipple = (RippleDrawable) this.mTileBackground;
            if (getWidth() != 0) {
                updateRippleSize();
            }
        }
        this.mIcon.onPanelModeChanged(this.mQSTileState);
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public final void onStateChanged(QSTile.State state) {
        this.mHandler.obtainMessage(1, state).sendToTarget();
        this.mQSTileState = state;
    }

    @Override // android.view.View
    public final void setClickable(boolean z) {
        super.setClickable(z);
    }

    @Override // com.android.systemui.animation.LaunchableView
    public final void setShouldBlockVisibilityChanges(boolean z) {
        this.mDelegate.setShouldBlockVisibilityChanges(z);
    }

    @Override // android.view.View
    public final String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append('[');
        sb.append("locInScreen=(" + this.mLocInScreen[0] + ", " + this.mLocInScreen[1] + ")");
        StringBuilder sb2 = new StringBuilder(", iconView=");
        sb2.append(this.mIcon.toString());
        sb.append(sb2.toString());
        sb.append(", tileState=" + this.mTileState);
        sb.append("]");
        return sb.toString();
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public final View updateAccessibilityOrder(View view) {
        setAccessibilityTraversalAfter(view.getId());
        return this;
    }

    public final void updateBackgroundColors() {
        this.mColorActive = ((LinearLayout) this).mContext.getColor(R.color.qs_tile_round_background_on);
        this.mColorDisabled = ((LinearLayout) this).mContext.getColor(R.color.qs_tile_round_background_off);
        this.mColorInactive = ((LinearLayout) this).mContext.getColor(R.color.qs_tile_round_background_dim);
    }

    public final void updateRippleSize() {
        int measuredWidth = this.mIcon.getMeasuredWidth() / 2;
        int measuredHeight = this.mIcon.getMeasuredHeight() / 2;
        int height = (int) (this.mIcon.getHeight() * 0.43f);
        this.mRipple.setHotspotBounds(measuredWidth - height, measuredHeight - height, measuredWidth + height, measuredHeight + height);
    }

    public SecQSTileBaseView(Context context, QSIconView qSIconView, boolean z) {
        super(context);
        int integer;
        int i;
        int max;
        this.mHandler = new H();
        this.mLocInScreen = new int[2];
        this.mStateDescriptionDeltas = null;
        this.mLastState = -1;
        this.mDelegate = new LaunchableViewDelegate(this, new Function1() { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SecQSTileBaseView.$r8$lambda$At0CU0hnXD3S0omAKRLn1Z_WouQ(SecQSTileBaseView.this, (Integer) obj);
            }
        });
        SecQSPanelResourcePicker secQSPanelResourcePicker = (SecQSPanelResourcePicker) Dependency.get(SecQSPanelResourcePicker.class);
        FrameLayout frameLayout = new FrameLayout(context);
        this.mIconFrame = frameLayout;
        this.mStrokeWidthActive = context.getResources().getDimension(android.R.dimen.date_picker_date_label_size);
        this.mStrokeWidthInactive = context.getResources().getDimension(android.R.dimen.date_picker_day_height);
        Context context2 = ((LinearLayout) this).mContext;
        secQSPanelResourcePicker.getClass();
        if (z) {
            max = SecQSPanelResourcePicker.getTileIconSize(context2);
        } else {
            boolean z2 = QpRune.QUICK_TABLET;
            if (z2) {
                i = (int) (context2.getResources().getFloat(R.dimen.qs_tile_touch_area_width_ratio_tablet) * DeviceState.getDisplayWidth(context2));
            } else {
                int panelWidth = SecQSPanelResourcePicker.getPanelWidth(context2) - (SecQSPanelResourcePicker.getPanelSidePadding(context2) * 2);
                Resources resources = context2.getResources();
                if (z2) {
                    integer = resources.getInteger(R.integer.sec_quick_qs_panel_max_columns_tablet);
                } else {
                    integer = resources.getInteger(R.integer.sec_quick_qs_panel_max_columns);
                }
                i = panelWidth / integer;
            }
            max = Math.max(i, SecQSPanelResourcePicker.getTileIconSize(context2));
        }
        Context context3 = ((LinearLayout) this).mContext;
        secQSPanelResourcePicker.getClass();
        int tileIconSize = z ? SecQSPanelResourcePicker.getTileIconSize(context3) : SecQSPanelResourcePicker.getTouchIconHeight(context3);
        setLayoutParams(new LinearLayout.LayoutParams(max, tileIconSize));
        addView(frameLayout, new LinearLayout.LayoutParams(max, tileIconSize));
        ImageView imageView = new ImageView(getContext());
        this.mBg = imageView;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.setTintList(ColorStateList.valueOf(0));
        secQSPanelResourcePicker.getClass();
        int tileIconSize2 = SecQSPanelResourcePicker.getTileIconSize(context);
        shapeDrawable.setIntrinsicHeight(tileIconSize2);
        shapeDrawable.setIntrinsicWidth(tileIconSize2);
        imageView.setImageDrawable(shapeDrawable);
        ViewGroup.LayoutParams layoutParams = new FrameLayout.LayoutParams(tileIconSize2, tileIconSize2, 17);
        frameLayout.addView(imageView, layoutParams);
        imageView.setLayoutParams(layoutParams);
        this.mIcon = qSIconView;
        frameLayout.addView(qSIconView, new FrameLayout.LayoutParams(tileIconSize2, tileIconSize2, 17));
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        frameLayout.setFocusable(false);
        this.mDetailViewList = new ArrayList<String>() { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView.1
            {
                add("RotationLock");
                add("Flashlight");
                add("Dnd");
            }
        };
        Drawable newTileBackground = newTileBackground();
        this.mTileBackground = newTileBackground;
        if (newTileBackground instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) newTileBackground;
            rippleDrawable.setColor(ColorStateList.valueOf(((LinearLayout) this).mContext.getColor(R.color.sec_qs_ripple_background)));
            this.mRipple = rippleDrawable;
            if (getWidth() != 0) {
                updateRippleSize();
            }
        }
        setImportantForAccessibility(2);
        qSIconView.setBackground(newTileBackground);
        qSIconView.setFocusable(true);
        setFocusable(false);
        updateBackgroundColors();
        setPadding(0, 0, 0, 0);
        setClipChildren(false);
        setClipToPadding(false);
        this.mCollapsedView = z;
        ViewCompat.setAccessibilityDelegate(qSIconView, new AccessibilityDelegateCompat(this) { // from class: com.android.systemui.qs.tileimpl.SecQSTileBaseView.2
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                accessibilityNodeInfoCompat.setSelected(false);
            }
        });
    }

    public void init(SecQSTileBaseView$$ExternalSyntheticLambda1 secQSTileBaseView$$ExternalSyntheticLambda1, SecQSTileBaseView$$ExternalSyntheticLambda1 secQSTileBaseView$$ExternalSyntheticLambda12, SecQSTileBaseView$$ExternalSyntheticLambda2 secQSTileBaseView$$ExternalSyntheticLambda2) {
        this.mIconFrame.setOnClickListener(secQSTileBaseView$$ExternalSyntheticLambda1);
        this.mIconFrame.setOnLongClickListener(secQSTileBaseView$$ExternalSyntheticLambda2);
        this.mIcon.setOnClickListener(secQSTileBaseView$$ExternalSyntheticLambda1);
        this.mIcon.setOnLongClickListener(secQSTileBaseView$$ExternalSyntheticLambda2);
    }

    @Override // com.android.systemui.plugins.qs.QSTileView
    public final void setPosition(int i) {
    }
}
