package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.ForwardingListener;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.reflect.widget.SeslTextViewReflector;
import com.samsung.systemui.splugins.volume.VolumePanelValues;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements MenuView.ItemView, View.OnClickListener, ActionMenuView.ActionMenuChildView, View.OnLongClickListener {
    public final Drawable initBackgroundDrawable;
    public boolean mAllowTextWithIcon;
    public final float mDefaultTextSize;
    public ActionMenuItemForwardingListener mForwardingListener;
    public Drawable mIcon;
    public boolean mIsChangedRelativePadding;
    public MenuItemImpl mItemData;
    public MenuBuilder.ItemInvoker mItemInvoker;
    public final int mMaxIconSize;
    public final int mMinWidth;
    public PopupCallback mPopupCallback;
    public int mSavedPaddingLeft;
    public CharSequence mTitle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ActionMenuItemForwardingListener extends ForwardingListener {
        public ActionMenuItemForwardingListener() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public final ShowableListMenu getPopup() {
            PopupCallback popupCallback = ActionMenuItemView.this.mPopupCallback;
            if (popupCallback != null) {
                return popupCallback.getPopup();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public final boolean onForwardingStarted() {
            ShowableListMenu popup;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            MenuBuilder.ItemInvoker itemInvoker = actionMenuItemView.mItemInvoker;
            if (itemInvoker == null || !itemInvoker.invokeItem(actionMenuItemView.mItemData) || (popup = getPopup()) == null || !popup.isShowing()) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class PopupCallback {
        public abstract MenuPopup getPopup();
    }

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public final boolean hasText() {
        return !TextUtils.isEmpty(getText());
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initialize(androidx.appcompat.view.menu.MenuItemImpl r7) {
        /*
            r6 = this;
            r6.mItemData = r7
            android.graphics.drawable.Drawable r0 = r7.getIcon()
            r6.mIcon = r0
            r1 = 0
            if (r0 == 0) goto L2b
            int r2 = r0.getIntrinsicWidth()
            int r3 = r0.getIntrinsicHeight()
            int r4 = r6.mMaxIconSize
            if (r2 <= r4) goto L1e
            float r5 = (float) r4
            float r2 = (float) r2
            float r5 = r5 / r2
            float r2 = (float) r3
            float r2 = r2 * r5
            int r3 = (int) r2
            r2 = r4
        L1e:
            if (r3 <= r4) goto L27
            float r5 = (float) r4
            float r3 = (float) r3
            float r5 = r5 / r3
            float r2 = (float) r2
            float r2 = r2 * r5
            int r2 = (int) r2
            goto L28
        L27:
            r4 = r3
        L28:
            r0.setBounds(r1, r1, r2, r4)
        L2b:
            r2 = 0
            r6.setCompoundDrawables(r0, r2, r2, r2)
            boolean r3 = r6.hasText()
            if (r3 == 0) goto L42
            java.util.WeakHashMap r3 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            int r3 = androidx.core.view.ViewCompat.Api17Impl.getLayoutDirection(r6)
            r4 = 1
            if (r3 != r4) goto L42
            r6.setCompoundDrawables(r2, r2, r0, r2)
            goto L45
        L42:
            r6.setCompoundDrawables(r0, r2, r2, r2)
        L45:
            r6.updateTextButtonVisibility()
            java.lang.CharSequence r0 = r7.getTitleCondensed()
            r6.mTitle = r0
            r6.setContentDescription(r0)
            r6.updateTextButtonVisibility()
            int r0 = r7.mId
            r6.setId(r0)
            boolean r0 = r7.isVisible()
            if (r0 == 0) goto L60
            goto L62
        L60:
            r1 = 8
        L62:
            r6.setVisibility(r1)
            boolean r0 = r7.isEnabled()
            r6.setEnabled(r0)
            boolean r7 = r7.hasSubMenu()
            if (r7 == 0) goto L7d
            androidx.appcompat.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener r7 = r6.mForwardingListener
            if (r7 != 0) goto L7d
            androidx.appcompat.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener r7 = new androidx.appcompat.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener
            r7.<init>()
            r6.mForwardingListener = r7
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ActionMenuItemView.initialize(androidx.appcompat.view.menu.MenuItemImpl):void");
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public final boolean needsDividerAfter() {
        return hasText();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
    public final boolean needsDividerBefore() {
        if (hasText() && this.mItemData.getIcon() == null) {
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MenuBuilder.ItemInvoker itemInvoker = this.mItemInvoker;
        if (itemInvoker != null) {
            itemInvoker.invokeItem(this.mItemData);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mAllowTextWithIcon = shouldAllowTextWithIcon();
        updateTextButtonVisibility();
    }

    @Override // android.view.View
    public final void onHoverChanged(boolean z) {
        TooltipCompatHandler.sIsForceActionBarX = true;
        TooltipCompatHandler.sIsForceBelow = true;
        super.onHoverChanged(z);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        return false;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        boolean hasText = hasText();
        if (hasText && (i4 = this.mSavedPaddingLeft) >= 0) {
            super.setPadding(i4, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(size, this.mMinWidth);
        } else {
            i3 = this.mMinWidth;
        }
        if (mode != 1073741824 && this.mMinWidth > 0 && measuredWidth < i3) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), i2);
        }
        if (!hasText && this.mIcon != null) {
            int measuredWidth2 = getMeasuredWidth();
            int width = this.mIcon.getBounds().width();
            if (!this.mIsChangedRelativePadding) {
                super.setPadding((measuredWidth2 - width) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence contentDescription = getContentDescription();
        if (!TextUtils.isEmpty(contentDescription)) {
            accessibilityEvent.getText().add(contentDescription);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ActionMenuItemForwardingListener actionMenuItemForwardingListener;
        if (this.mItemData.hasSubMenu() && (actionMenuItemForwardingListener = this.mForwardingListener) != null && actionMenuItemForwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean performLongClick() {
        if (this.mIcon == null) {
            TooltipCompatHandler.sIsTooltipNull = true;
            return true;
        }
        TooltipCompatHandler.sIsForceActionBarX = true;
        TooltipCompatHandler.sIsForceBelow = true;
        return super.performLongClick();
    }

    @Override // android.view.View
    public final void setBackground(Drawable drawable) {
        super.setBackground(drawable);
    }

    @Override // android.widget.TextView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (!this.mIsChangedRelativePadding) {
            return frame;
        }
        Drawable background = getBackground();
        if (this.mIcon != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int paddingLeft = (getPaddingLeft() - getPaddingRight()) / 2;
            background.setHotspotBounds(paddingLeft, 0, width + paddingLeft, height);
        } else if (background != null) {
            background.setHotspotBounds(0, 0, getWidth(), getHeight());
        }
        return frame;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.mSavedPaddingLeft = i;
        super.setPadding(i, i2, i3, i4);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        this.mSavedPaddingLeft = i;
        this.mIsChangedRelativePadding = true;
        super.setPaddingRelative(i, i2, i3, i4);
    }

    public final boolean shouldAllowTextWithIcon() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (i < 480 && ((i < 640 || i2 < 480) && configuration.orientation != 2)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        if (r5.mAllowTextWithIcon != false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateTextButtonVisibility() {
        /*
            r5 = this;
            java.lang.CharSequence r0 = r5.mTitle
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            android.graphics.drawable.Drawable r2 = r5.mIcon
            if (r2 == 0) goto L1f
            androidx.appcompat.view.menu.MenuItemImpl r2 = r5.mItemData
            int r2 = r2.mShowAsAction
            r3 = 4
            r2 = r2 & r3
            r4 = 0
            if (r2 != r3) goto L17
            r2 = r1
            goto L18
        L17:
            r2 = r4
        L18:
            if (r2 == 0) goto L20
            boolean r2 = r5.mAllowTextWithIcon
            if (r2 != 0) goto L1f
            goto L20
        L1f:
            r4 = r1
        L20:
            r0 = r0 & r4
            r2 = 0
            if (r0 == 0) goto L27
            java.lang.CharSequence r3 = r5.mTitle
            goto L28
        L27:
            r3 = r2
        L28:
            r5.setText(r3)
            if (r0 == 0) goto L42
            android.content.Context r3 = r5.getContext()
            boolean r3 = androidx.appcompat.util.SeslMisc.isLightTheme(r3)
            if (r3 == 0) goto L3b
            r3 = 2131234745(0x7f080fb9, float:1.8085664E38)
            goto L3e
        L3b:
            r3 = 2131234744(0x7f080fb8, float:1.8085662E38)
        L3e:
            r5.setBackgroundResource(r3)
            goto L47
        L42:
            android.graphics.drawable.Drawable r3 = r5.initBackgroundDrawable
            r5.setBackground(r3)
        L47:
            androidx.appcompat.view.menu.MenuItemImpl r3 = r5.mItemData
            java.lang.CharSequence r3 = r3.mContentDescription
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L5d
            if (r0 == 0) goto L55
            r3 = r2
            goto L59
        L55:
            androidx.appcompat.view.menu.MenuItemImpl r3 = r5.mItemData
            java.lang.CharSequence r3 = r3.mTitle
        L59:
            r5.setContentDescription(r3)
            goto L60
        L5d:
            r5.setContentDescription(r3)
        L60:
            androidx.appcompat.view.menu.MenuItemImpl r3 = r5.mItemData
            java.lang.CharSequence r3 = r3.mTooltipText
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L76
            if (r0 == 0) goto L6e
            r3 = r2
            goto L72
        L6e:
            androidx.appcompat.view.menu.MenuItemImpl r3 = r5.mItemData
            java.lang.CharSequence r3 = r3.mTitle
        L72:
            r5.setTooltipText(r3)
            goto L79
        L76:
            r5.setTooltipText(r3)
        L79:
            float r3 = r5.mDefaultTextSize
            r4 = 0
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L97
            android.content.res.Resources r3 = r5.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            float r3 = r3.fontScale
            r4 = 1067030938(0x3f99999a, float:1.2)
            float r3 = java.lang.Math.min(r3, r4)
            float r4 = r5.mDefaultTextSize
            float r4 = r4 * r3
            r5.setTextSize(r1, r4)
        L97:
            if (r0 == 0) goto L9b
            java.lang.CharSequence r2 = r5.mTitle
        L9b:
            r5.setText(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ActionMenuItemView.updateTextButtonVisibility():void");
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsChangedRelativePadding = false;
        this.mDefaultTextSize = 0.0f;
        Resources resources = context.getResources();
        this.mAllowTextWithIcon = shouldAllowTextWithIcon();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ActionMenuItemView, i, 0);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.mMaxIconSize = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        setOnLongClickListener(this);
        this.mSavedPaddingLeft = -1;
        setSaveEnabled(false);
        Resources.Theme theme = context.getTheme();
        int[] iArr = R$styleable.AppCompatTheme;
        TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(null, iArr, 0, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(26, 0);
        obtainStyledAttributes2.recycle();
        TypedArray obtainStyledAttributes3 = context.obtainStyledAttributes(resourceId, R$styleable.TextAppearance);
        TypedValue peekValue = obtainStyledAttributes3.peekValue(0);
        obtainStyledAttributes3.recycle();
        if (peekValue != null) {
            this.mDefaultTextSize = TypedValue.complexToFloat(peekValue.data);
        }
        SeslTextViewReflector.semSetButtonShapeEnabled(this, true);
        TypedArray obtainStyledAttributes4 = context.getTheme().obtainStyledAttributes(null, iArr, 0, 0);
        int resourceId2 = obtainStyledAttributes4.getResourceId(24, 0);
        obtainStyledAttributes4.recycle();
        TypedArray obtainStyledAttributes5 = context.getTheme().obtainStyledAttributes(resourceId2, new int[]{R.attr.background});
        this.initBackgroundDrawable = obtainStyledAttributes5.getDrawable(0);
        obtainStyledAttributes5.recycle();
    }
}
