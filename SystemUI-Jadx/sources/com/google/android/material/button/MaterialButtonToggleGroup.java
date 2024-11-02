package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.timepicker.TimePickerView$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class MaterialButtonToggleGroup extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Set checkedIds;
    public Integer[] childOrder;
    public final AnonymousClass1 childOrderComparator;
    public final int defaultCheckId;
    public final LinkedHashSet onButtonCheckedListeners;
    public final List originalCornerData;
    public final PressedStateTracker pressedStateTracker;
    public final boolean selectionRequired;
    public boolean singleSelection;
    public boolean skipCheckedStateTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CornerData {
        public static final AbsoluteCornerSize noCorner = new AbsoluteCornerSize(0.0f);
        public final CornerSize bottomLeft;
        public final CornerSize bottomRight;
        public final CornerSize topLeft;
        public final CornerSize topRight;

        public CornerData(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
            this.topLeft = cornerSize;
            this.topRight = cornerSize3;
            this.bottomRight = cornerSize4;
            this.bottomLeft = cornerSize2;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PressedStateTracker {
        private PressedStateTracker() {
        }
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MaterialButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        if (materialButton.getId() == -1) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            materialButton.setId(ViewCompat.Api17Impl.generateViewId());
        }
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        if (materialButton.isUsingOriginalBackground()) {
            materialButton.materialButtonHelper.checkable = true;
        }
        materialButton.onPressedChangeListenerInternal = this.pressedStateTracker;
        if (materialButton.isUsingOriginalBackground()) {
            MaterialButtonHelper materialButtonHelper = materialButton.materialButtonHelper;
            materialButtonHelper.shouldDrawSurfaceColorStroke = true;
            int i2 = 0;
            MaterialShapeDrawable materialShapeDrawable = materialButtonHelper.getMaterialShapeDrawable(false);
            MaterialShapeDrawable materialShapeDrawable2 = materialButtonHelper.getMaterialShapeDrawable(true);
            if (materialShapeDrawable != null) {
                float f = materialButtonHelper.strokeWidth;
                ColorStateList colorStateList = materialButtonHelper.strokeColor;
                materialShapeDrawable.drawableState.strokeWidth = f;
                materialShapeDrawable.invalidateSelf();
                materialShapeDrawable.setStrokeColor(colorStateList);
                if (materialShapeDrawable2 != null) {
                    float f2 = materialButtonHelper.strokeWidth;
                    if (materialButtonHelper.shouldDrawSurfaceColorStroke) {
                        i2 = MaterialColors.getColor(materialButtonHelper.materialButton, R.attr.colorSurface);
                    }
                    materialShapeDrawable2.drawableState.strokeWidth = f2;
                    materialShapeDrawable2.invalidateSelf();
                    materialShapeDrawable2.setStrokeColor(ColorStateList.valueOf(i2));
                }
            }
        }
        checkInternal(materialButton.getId(), materialButton.isChecked());
        if (materialButton.isUsingOriginalBackground()) {
            ShapeAppearanceModel shapeAppearanceModel = materialButton.materialButtonHelper.shapeAppearanceModel;
            ((ArrayList) this.originalCornerData).add(new CornerData(shapeAppearanceModel.topLeftCornerSize, shapeAppearanceModel.bottomLeftCornerSize, shapeAppearanceModel.topRightCornerSize, shapeAppearanceModel.bottomRightCornerSize));
            ViewCompat.setAccessibilityDelegate(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.2
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    int i3;
                    this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.mInfo);
                    int i4 = MaterialButtonToggleGroup.$r8$clinit;
                    MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
                    materialButtonToggleGroup.getClass();
                    if (view2 instanceof MaterialButton) {
                        int i5 = 0;
                        for (int i6 = 0; i6 < materialButtonToggleGroup.getChildCount(); i6++) {
                            if (materialButtonToggleGroup.getChildAt(i6) == view2) {
                                i3 = i5;
                                break;
                            }
                            if ((materialButtonToggleGroup.getChildAt(i6) instanceof MaterialButton) && materialButtonToggleGroup.isChildVisible(i6)) {
                                i5++;
                            }
                        }
                    }
                    i3 = -1;
                    accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(false, 0, 1, i3, 1, ((MaterialButton) view2).isChecked()));
                }
            });
            return;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public final void adjustChildMarginsAndUpdateLayout() {
        int i;
        int i2;
        LinearLayout.LayoutParams layoutParams;
        int childCount = getChildCount();
        int i3 = 0;
        while (true) {
            if (i3 < childCount) {
                if (isChildVisible(i3)) {
                    break;
                } else {
                    i3++;
                }
            } else {
                i3 = -1;
                break;
            }
        }
        if (i3 == -1) {
            return;
        }
        for (int i4 = i3 + 1; i4 < getChildCount(); i4++) {
            MaterialButton childButton = getChildButton(i4);
            MaterialButton childButton2 = getChildButton(i4 - 1);
            if (childButton.isUsingOriginalBackground()) {
                i = childButton.materialButtonHelper.strokeWidth;
            } else {
                i = 0;
            }
            if (childButton2.isUsingOriginalBackground()) {
                i2 = childButton2.materialButtonHelper.strokeWidth;
            } else {
                i2 = 0;
            }
            int min = Math.min(i, i2);
            ViewGroup.LayoutParams layoutParams2 = childButton.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                layoutParams = (LinearLayout.LayoutParams) layoutParams2;
            } else {
                layoutParams = new LinearLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
            }
            if (getOrientation() == 0) {
                layoutParams.setMarginEnd(0);
                layoutParams.setMarginStart(-min);
                layoutParams.topMargin = 0;
            } else {
                layoutParams.bottomMargin = 0;
                layoutParams.topMargin = -min;
                layoutParams.setMarginStart(0);
            }
            childButton.setLayoutParams(layoutParams);
        }
        if (getChildCount() != 0 && i3 != -1) {
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) getChildButton(i3).getLayoutParams();
            if (getOrientation() == 1) {
                layoutParams3.topMargin = 0;
                layoutParams3.bottomMargin = 0;
            } else {
                layoutParams3.setMarginEnd(0);
                layoutParams3.setMarginStart(0);
                layoutParams3.leftMargin = 0;
                layoutParams3.rightMargin = 0;
            }
        }
    }

    public final void checkInternal(int i, boolean z) {
        if (i == -1) {
            NestedScrollView$$ExternalSyntheticOutline0.m("Button ID is not valid: ", i, "MaterialButtonToggleGroup");
            return;
        }
        HashSet hashSet = new HashSet(this.checkedIds);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.singleSelection && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else if (!z && hashSet.contains(Integer.valueOf(i))) {
            if (!this.selectionRequired || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        } else {
            return;
        }
        updateCheckedIds(hashSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.childOrderComparator);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(getChildButton(i), Integer.valueOf(i));
        }
        this.childOrder = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final MaterialButton getChildButton(int i) {
        return (MaterialButton) getChildAt(i);
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.childOrder;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w("MaterialButtonToggleGroup", "Child order wasn't updated");
        return i2;
    }

    public final boolean isChildVisible(int i) {
        if (getChildAt(i).getVisibility() != 8) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.defaultCheckId;
        if (i != -1) {
            updateCheckedIds(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if ((getChildAt(i3) instanceof MaterialButton) && isChildVisible(i3)) {
                i2++;
            }
        }
        if (this.singleSelection) {
            i = 1;
        } else {
            i = 2;
        }
        wrap.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, i2, i));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        updateChildShapes();
        adjustChildMarginsAndUpdateLayout();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).onPressedChangeListenerInternal = null;
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            ((ArrayList) this.originalCornerData).remove(indexOfChild);
        }
        updateChildShapes();
        adjustChildMarginsAndUpdateLayout();
    }

    public final void updateCheckedIds(Set set) {
        Set set2 = this.checkedIds;
        this.checkedIds = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = getChildButton(i).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.skipCheckedStateTracker = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.skipCheckedStateTracker = false;
            }
            if (((HashSet) set2).contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.onButtonCheckedListeners.iterator();
                while (it.hasNext()) {
                    ((TimePickerView$$ExternalSyntheticLambda0) it.next()).onButtonChecked();
                }
            }
        }
        invalidate();
    }

    public void updateChildShapes() {
        int i;
        boolean z;
        CornerData cornerData;
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 < childCount2) {
                if (isChildVisible(i2)) {
                    break;
                } else {
                    i2++;
                }
            } else {
                i2 = -1;
                break;
            }
        }
        int childCount3 = getChildCount() - 1;
        while (true) {
            if (childCount3 < 0) {
                break;
            }
            if (isChildVisible(childCount3)) {
                i = childCount3;
                break;
            }
            childCount3--;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            MaterialButton childButton = getChildButton(i3);
            if (childButton.getVisibility() != 8) {
                if (childButton.isUsingOriginalBackground()) {
                    ShapeAppearanceModel shapeAppearanceModel = childButton.materialButtonHelper.shapeAppearanceModel;
                    shapeAppearanceModel.getClass();
                    ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
                    CornerData cornerData2 = (CornerData) ((ArrayList) this.originalCornerData).get(i3);
                    if (i2 != i) {
                        if (getOrientation() == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (i3 == i2) {
                            if (z) {
                                AbsoluteCornerSize absoluteCornerSize = CornerData.noCorner;
                                if (ViewUtils.isLayoutRtl(this)) {
                                    CornerSize cornerSize = cornerData2.topRight;
                                    CornerSize cornerSize2 = cornerData2.bottomRight;
                                    AbsoluteCornerSize absoluteCornerSize2 = CornerData.noCorner;
                                    cornerData = new CornerData(absoluteCornerSize2, absoluteCornerSize2, cornerSize, cornerSize2);
                                } else {
                                    CornerSize cornerSize3 = cornerData2.topLeft;
                                    AbsoluteCornerSize absoluteCornerSize3 = CornerData.noCorner;
                                    cornerData = new CornerData(cornerSize3, cornerData2.bottomLeft, absoluteCornerSize3, absoluteCornerSize3);
                                }
                            } else {
                                CornerSize cornerSize4 = cornerData2.topLeft;
                                AbsoluteCornerSize absoluteCornerSize4 = CornerData.noCorner;
                                cornerData = new CornerData(cornerSize4, absoluteCornerSize4, cornerData2.topRight, absoluteCornerSize4);
                            }
                        } else if (i3 == i) {
                            if (z) {
                                AbsoluteCornerSize absoluteCornerSize5 = CornerData.noCorner;
                                if (ViewUtils.isLayoutRtl(this)) {
                                    CornerSize cornerSize5 = cornerData2.topLeft;
                                    AbsoluteCornerSize absoluteCornerSize6 = CornerData.noCorner;
                                    cornerData = new CornerData(cornerSize5, cornerData2.bottomLeft, absoluteCornerSize6, absoluteCornerSize6);
                                } else {
                                    CornerSize cornerSize6 = cornerData2.topRight;
                                    CornerSize cornerSize7 = cornerData2.bottomRight;
                                    AbsoluteCornerSize absoluteCornerSize7 = CornerData.noCorner;
                                    cornerData = new CornerData(absoluteCornerSize7, absoluteCornerSize7, cornerSize6, cornerSize7);
                                }
                            } else {
                                AbsoluteCornerSize absoluteCornerSize8 = CornerData.noCorner;
                                cornerData = new CornerData(absoluteCornerSize8, cornerData2.bottomLeft, absoluteCornerSize8, cornerData2.bottomRight);
                            }
                        } else {
                            cornerData2 = null;
                        }
                        cornerData2 = cornerData;
                    }
                    if (cornerData2 == null) {
                        builder.setAllCornerSizes(0.0f);
                    } else {
                        builder.topLeftCornerSize = cornerData2.topLeft;
                        builder.bottomLeftCornerSize = cornerData2.bottomLeft;
                        builder.topRightCornerSize = cornerData2.topRight;
                        builder.bottomRightCornerSize = cornerData2.bottomRight;
                    }
                    childButton.setShapeAppearanceModel(builder.build());
                } else {
                    throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
                }
            }
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Type inference failed for: r8v5, types: [com.google.android.material.button.MaterialButtonToggleGroup$1] */
    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 2132019116), attributeSet, i);
        this.originalCornerData = new ArrayList();
        this.pressedStateTracker = new PressedStateTracker();
        this.onButtonCheckedListeners = new LinkedHashSet();
        this.childOrderComparator = new Comparator() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
                if (compareTo == 0) {
                    int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                    if (compareTo2 == 0) {
                        return Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
                    }
                    return compareTo2;
                }
                return compareTo;
            }
        };
        this.skipCheckedStateTracker = false;
        this.checkedIds = new HashSet();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, R$styleable.MaterialButtonToggleGroup, i, 2132019116, new int[0]);
        boolean z = obtainStyledAttributes.getBoolean(2, false);
        if (this.singleSelection != z) {
            this.singleSelection = z;
            updateCheckedIds(new HashSet());
        }
        this.defaultCheckId = obtainStyledAttributes.getResourceId(0, -1);
        this.selectionRequired = obtainStyledAttributes.getBoolean(1, false);
        setChildrenDrawingOrderEnabled(true);
        obtainStyledAttributes.recycle();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(this, 1);
    }
}
