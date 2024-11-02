package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Flow extends VirtualLayout {
    public ConstraintWidget[] mDisplayedWidgets;
    public int mHorizontalStyle = -1;
    public int mVerticalStyle = -1;
    public int mFirstHorizontalStyle = -1;
    public int mFirstVerticalStyle = -1;
    public int mLastHorizontalStyle = -1;
    public int mLastVerticalStyle = -1;
    public float mHorizontalBias = 0.5f;
    public float mVerticalBias = 0.5f;
    public float mFirstHorizontalBias = 0.5f;
    public float mFirstVerticalBias = 0.5f;
    public float mLastHorizontalBias = 0.5f;
    public float mLastVerticalBias = 0.5f;
    public int mHorizontalGap = 0;
    public int mVerticalGap = 0;
    public int mHorizontalAlign = 2;
    public int mVerticalAlign = 2;
    public int mWrapMode = 0;
    public int mMaxElementsWrap = -1;
    public int mOrientation = 0;
    public final ArrayList mChainList = new ArrayList();
    public ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    public ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    public int[] mAlignedDimensions = null;
    public int mDisplayedWidgetsCount = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class WidgetsList {
        public ConstraintAnchor mBottom;
        public ConstraintAnchor mLeft;
        public int mMax;
        public int mOrientation;
        public int mPaddingBottom;
        public int mPaddingLeft;
        public int mPaddingRight;
        public int mPaddingTop;
        public ConstraintAnchor mRight;
        public ConstraintAnchor mTop;
        public ConstraintWidget biggest = null;
        public int biggestDimension = 0;
        public int mWidth = 0;
        public int mHeight = 0;
        public int mStartIndex = 0;
        public int mCount = 0;
        public int mNbMatchConstraintsWidgets = 0;

        public WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
            this.mPaddingLeft = 0;
            this.mPaddingTop = 0;
            this.mPaddingRight = 0;
            this.mPaddingBottom = 0;
            this.mMax = 0;
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = Flow.this.mResolvedPaddingLeft;
            this.mPaddingTop = Flow.this.mPaddingTop;
            this.mPaddingRight = Flow.this.mResolvedPaddingRight;
            this.mPaddingBottom = Flow.this.mPaddingBottom;
            this.mMax = i2;
        }

        public final void add(ConstraintWidget constraintWidget) {
            int i = this.mOrientation;
            int i2 = 0;
            Flow flow = Flow.this;
            if (i == 0) {
                int widgetWidth = flow.getWidgetWidth(constraintWidget, this.mMax);
                if (constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetWidth = 0;
                }
                int i3 = flow.mHorizontalGap;
                if (constraintWidget.mVisibility != 8) {
                    i2 = i3;
                }
                this.mWidth = widgetWidth + i2 + this.mWidth;
                int widgetHeight = flow.getWidgetHeight(constraintWidget, this.mMax);
                if (this.biggest == null || this.biggestDimension < widgetHeight) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetHeight;
                    this.mHeight = widgetHeight;
                }
            } else {
                int widgetWidth2 = flow.getWidgetWidth(constraintWidget, this.mMax);
                int widgetHeight2 = flow.getWidgetHeight(constraintWidget, this.mMax);
                if (constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    this.mNbMatchConstraintsWidgets++;
                    widgetHeight2 = 0;
                }
                int i4 = flow.mVerticalGap;
                if (constraintWidget.mVisibility != 8) {
                    i2 = i4;
                }
                this.mHeight = widgetHeight2 + i2 + this.mHeight;
                if (this.biggest == null || this.biggestDimension < widgetWidth2) {
                    this.biggest = constraintWidget;
                    this.biggestDimension = widgetWidth2;
                    this.mWidth = widgetWidth2;
                }
            }
            this.mCount++;
        }

        public final void createConstraints(int i, boolean z, boolean z2) {
            Flow flow;
            boolean z3;
            int i2;
            int i3;
            int i4;
            ConstraintWidget constraintWidget;
            int i5;
            int i6;
            char c;
            int i7;
            float f;
            float f2;
            int i8;
            float f3;
            float f4;
            int i9;
            int i10;
            int i11;
            int i12 = this.mCount;
            int i13 = 0;
            while (true) {
                flow = Flow.this;
                if (i13 >= i12 || (i11 = this.mStartIndex + i13) >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget2 = flow.mDisplayedWidgets[i11];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
                i13++;
            }
            if (i12 != 0 && this.biggest != null) {
                if (z2 && i == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                int i14 = -1;
                int i15 = -1;
                for (int i16 = 0; i16 < i12; i16++) {
                    if (z) {
                        i10 = (i12 - 1) - i16;
                    } else {
                        i10 = i16;
                    }
                    int i17 = this.mStartIndex + i10;
                    if (i17 >= flow.mDisplayedWidgetsCount) {
                        break;
                    }
                    ConstraintWidget constraintWidget3 = flow.mDisplayedWidgets[i17];
                    if (constraintWidget3 != null && constraintWidget3.mVisibility == 0) {
                        if (i14 == -1) {
                            i14 = i16;
                        }
                        i15 = i16;
                    }
                }
                if (this.mOrientation == 0) {
                    ConstraintWidget constraintWidget4 = this.biggest;
                    constraintWidget4.mVerticalChainStyle = flow.mVerticalStyle;
                    int i18 = this.mPaddingTop;
                    if (i > 0) {
                        i18 += flow.mVerticalGap;
                    }
                    ConstraintAnchor constraintAnchor = this.mTop;
                    ConstraintAnchor constraintAnchor2 = constraintWidget4.mTop;
                    constraintAnchor2.connect(constraintAnchor, i18);
                    ConstraintAnchor constraintAnchor3 = constraintWidget4.mBottom;
                    if (z2) {
                        constraintAnchor3.connect(this.mBottom, this.mPaddingBottom);
                    }
                    if (i > 0) {
                        this.mTop.mOwner.mBottom.connect(constraintAnchor2, 0);
                    }
                    if (flow.mVerticalAlign == 3 && !constraintWidget4.hasBaseline) {
                        for (int i19 = 0; i19 < i12; i19++) {
                            if (z) {
                                i9 = (i12 - 1) - i19;
                            } else {
                                i9 = i19;
                            }
                            int i20 = this.mStartIndex + i9;
                            if (i20 >= flow.mDisplayedWidgetsCount) {
                                break;
                            }
                            constraintWidget = flow.mDisplayedWidgets[i20];
                            if (constraintWidget.hasBaseline) {
                                break;
                            }
                        }
                    }
                    constraintWidget = constraintWidget4;
                    int i21 = 0;
                    ConstraintWidget constraintWidget5 = null;
                    while (i21 < i12) {
                        if (z) {
                            i5 = (i12 - 1) - i21;
                        } else {
                            i5 = i21;
                        }
                        int i22 = this.mStartIndex + i5;
                        if (i22 < flow.mDisplayedWidgetsCount) {
                            ConstraintWidget constraintWidget6 = flow.mDisplayedWidgets[i22];
                            if (constraintWidget6 == null) {
                                i6 = i12;
                                c = 3;
                            } else {
                                ConstraintAnchor constraintAnchor4 = constraintWidget6.mLeft;
                                if (i21 == 0) {
                                    constraintWidget6.connect(constraintAnchor4, this.mLeft, this.mPaddingLeft);
                                }
                                if (i5 == 0) {
                                    int i23 = flow.mHorizontalStyle;
                                    if (z) {
                                        i7 = i23;
                                        f = 1.0f - flow.mHorizontalBias;
                                    } else {
                                        i7 = i23;
                                        f = flow.mHorizontalBias;
                                    }
                                    if (this.mStartIndex == 0) {
                                        int i24 = flow.mFirstHorizontalStyle;
                                        f2 = f;
                                        if (i24 != -1) {
                                            if (z) {
                                                f4 = 1.0f - flow.mFirstHorizontalBias;
                                            } else {
                                                f4 = flow.mFirstHorizontalBias;
                                            }
                                            f3 = f4;
                                            i8 = i24;
                                            constraintWidget6.mHorizontalChainStyle = i8;
                                            constraintWidget6.mHorizontalBiasPercent = f3;
                                        }
                                    } else {
                                        f2 = f;
                                    }
                                    if (z2 && (i8 = flow.mLastHorizontalStyle) != -1) {
                                        if (z) {
                                            f3 = 1.0f - flow.mLastHorizontalBias;
                                        } else {
                                            f3 = flow.mLastHorizontalBias;
                                        }
                                    } else {
                                        i8 = i7;
                                        f3 = f2;
                                    }
                                    constraintWidget6.mHorizontalChainStyle = i8;
                                    constraintWidget6.mHorizontalBiasPercent = f3;
                                }
                                if (i21 == i12 - 1) {
                                    i6 = i12;
                                    constraintWidget6.connect(constraintWidget6.mRight, this.mRight, this.mPaddingRight);
                                } else {
                                    i6 = i12;
                                }
                                if (constraintWidget5 != null) {
                                    int i25 = flow.mHorizontalGap;
                                    ConstraintAnchor constraintAnchor5 = constraintWidget5.mRight;
                                    constraintAnchor4.connect(constraintAnchor5, i25);
                                    if (i21 == i14) {
                                        int i26 = this.mPaddingLeft;
                                        if (constraintAnchor4.isConnected()) {
                                            constraintAnchor4.mGoneMargin = i26;
                                        }
                                    }
                                    constraintAnchor5.connect(constraintAnchor4, 0);
                                    if (i21 == i15 + 1) {
                                        int i27 = this.mPaddingRight;
                                        if (constraintAnchor5.isConnected()) {
                                            constraintAnchor5.mGoneMargin = i27;
                                        }
                                    }
                                }
                                if (constraintWidget6 != constraintWidget4) {
                                    int i28 = flow.mVerticalAlign;
                                    c = 3;
                                    if (i28 == 3 && constraintWidget.hasBaseline && constraintWidget6 != constraintWidget && constraintWidget6.hasBaseline) {
                                        constraintWidget6.mBaseline.connect(constraintWidget.mBaseline, 0);
                                    } else {
                                        ConstraintAnchor constraintAnchor6 = constraintWidget6.mTop;
                                        if (i28 != 0) {
                                            ConstraintAnchor constraintAnchor7 = constraintWidget6.mBottom;
                                            if (i28 != 1) {
                                                if (z3) {
                                                    constraintAnchor6.connect(this.mTop, this.mPaddingTop);
                                                    constraintAnchor7.connect(this.mBottom, this.mPaddingBottom);
                                                } else {
                                                    constraintAnchor6.connect(constraintAnchor2, 0);
                                                    constraintAnchor7.connect(constraintAnchor3, 0);
                                                }
                                            } else {
                                                constraintAnchor7.connect(constraintAnchor3, 0);
                                            }
                                        } else {
                                            constraintAnchor6.connect(constraintAnchor2, 0);
                                        }
                                    }
                                } else {
                                    c = 3;
                                }
                                constraintWidget5 = constraintWidget6;
                            }
                            i21++;
                            i12 = i6;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                ConstraintWidget constraintWidget7 = this.biggest;
                constraintWidget7.mHorizontalChainStyle = flow.mHorizontalStyle;
                int i29 = this.mPaddingLeft;
                if (i > 0) {
                    i29 += flow.mHorizontalGap;
                }
                ConstraintAnchor constraintAnchor8 = constraintWidget7.mRight;
                ConstraintAnchor constraintAnchor9 = constraintWidget7.mLeft;
                if (z) {
                    constraintAnchor8.connect(this.mRight, i29);
                    if (z2) {
                        constraintAnchor9.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mRight.mOwner.mLeft.connect(constraintAnchor8, 0);
                    }
                } else {
                    constraintAnchor9.connect(this.mLeft, i29);
                    if (z2) {
                        constraintAnchor8.connect(this.mRight, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mLeft.mOwner.mRight.connect(constraintAnchor9, 0);
                    }
                }
                int i30 = 0;
                ConstraintWidget constraintWidget8 = null;
                while (i30 < i12) {
                    int i31 = this.mStartIndex + i30;
                    if (i31 < flow.mDisplayedWidgetsCount) {
                        ConstraintWidget constraintWidget9 = flow.mDisplayedWidgets[i31];
                        if (constraintWidget9 == null) {
                            constraintWidget9 = constraintWidget8;
                        } else {
                            ConstraintAnchor constraintAnchor10 = constraintWidget9.mTop;
                            if (i30 == 0) {
                                constraintWidget9.connect(constraintAnchor10, this.mTop, this.mPaddingTop);
                                int i32 = flow.mVerticalStyle;
                                float f5 = flow.mVerticalBias;
                                if (this.mStartIndex == 0) {
                                    i4 = flow.mFirstVerticalStyle;
                                    i2 = i32;
                                    i3 = -1;
                                    if (i4 != -1) {
                                        f5 = flow.mFirstVerticalBias;
                                        constraintWidget9.mVerticalChainStyle = i4;
                                        constraintWidget9.mVerticalBiasPercent = f5;
                                    }
                                } else {
                                    i2 = i32;
                                    i3 = -1;
                                }
                                if (z2 && (i4 = flow.mLastVerticalStyle) != i3) {
                                    f5 = flow.mLastVerticalBias;
                                } else {
                                    i4 = i2;
                                }
                                constraintWidget9.mVerticalChainStyle = i4;
                                constraintWidget9.mVerticalBiasPercent = f5;
                            }
                            if (i30 == i12 - 1) {
                                constraintWidget9.connect(constraintWidget9.mBottom, this.mBottom, this.mPaddingBottom);
                            }
                            if (constraintWidget8 != null) {
                                int i33 = flow.mVerticalGap;
                                ConstraintAnchor constraintAnchor11 = constraintWidget8.mBottom;
                                constraintAnchor10.connect(constraintAnchor11, i33);
                                if (i30 == i14) {
                                    int i34 = this.mPaddingTop;
                                    if (constraintAnchor10.isConnected()) {
                                        constraintAnchor10.mGoneMargin = i34;
                                    }
                                }
                                constraintAnchor11.connect(constraintAnchor10, 0);
                                if (i30 == i15 + 1) {
                                    int i35 = this.mPaddingBottom;
                                    if (constraintAnchor11.isConnected()) {
                                        constraintAnchor11.mGoneMargin = i35;
                                    }
                                }
                            }
                            if (constraintWidget9 != constraintWidget7) {
                                ConstraintAnchor constraintAnchor12 = constraintWidget9.mRight;
                                ConstraintAnchor constraintAnchor13 = constraintWidget9.mLeft;
                                if (z) {
                                    int i36 = flow.mHorizontalAlign;
                                    if (i36 != 0) {
                                        if (i36 != 1) {
                                            if (i36 == 2) {
                                                constraintAnchor13.connect(constraintAnchor9, 0);
                                                constraintAnchor12.connect(constraintAnchor8, 0);
                                            }
                                        } else {
                                            constraintAnchor13.connect(constraintAnchor9, 0);
                                        }
                                    } else {
                                        constraintAnchor12.connect(constraintAnchor8, 0);
                                    }
                                    i30++;
                                    constraintWidget8 = constraintWidget9;
                                } else {
                                    int i37 = flow.mHorizontalAlign;
                                    if (i37 != 0) {
                                        if (i37 != 1) {
                                            if (i37 == 2) {
                                                if (z3) {
                                                    constraintAnchor13.connect(this.mLeft, this.mPaddingLeft);
                                                    constraintAnchor12.connect(this.mRight, this.mPaddingRight);
                                                } else {
                                                    constraintAnchor13.connect(constraintAnchor9, 0);
                                                    constraintAnchor12.connect(constraintAnchor8, 0);
                                                }
                                            }
                                        } else {
                                            constraintAnchor12.connect(constraintAnchor8, 0);
                                        }
                                    } else {
                                        constraintAnchor13.connect(constraintAnchor9, 0);
                                    }
                                    i30++;
                                    constraintWidget8 = constraintWidget9;
                                }
                            }
                        }
                        i30++;
                        constraintWidget8 = constraintWidget9;
                    } else {
                        return;
                    }
                }
            }
        }

        public final int getHeight() {
            if (this.mOrientation == 1) {
                return this.mHeight - Flow.this.mVerticalGap;
            }
            return this.mHeight;
        }

        public final int getWidth() {
            if (this.mOrientation == 0) {
                return this.mWidth - Flow.this.mHorizontalGap;
            }
            return this.mWidth;
        }

        public final void measureMatchConstraints(int i) {
            int i2 = this.mNbMatchConstraintsWidgets;
            if (i2 == 0) {
                return;
            }
            int i3 = this.mCount;
            int i4 = i / i2;
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = this.mStartIndex;
                int i7 = i6 + i5;
                Flow flow = Flow.this;
                if (i7 >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget = flow.mDisplayedWidgets[i6 + i5];
                if (this.mOrientation == 0) {
                    if (constraintWidget != null) {
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                        if (dimensionBehaviourArr[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            flow.measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i4, dimensionBehaviourArr[1], constraintWidget.getHeight());
                        }
                    }
                } else if (constraintWidget != null) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.mListDimensionBehaviors;
                    if (dimensionBehaviourArr2[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                        flow.measure(constraintWidget, dimensionBehaviourArr2[0], constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i4);
                    }
                }
            }
            this.mWidth = 0;
            this.mHeight = 0;
            this.biggest = null;
            this.biggestDimension = 0;
            int i8 = this.mCount;
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = this.mStartIndex + i9;
                Flow flow2 = Flow.this;
                if (i10 < flow2.mDisplayedWidgetsCount) {
                    ConstraintWidget constraintWidget2 = flow2.mDisplayedWidgets[i10];
                    if (this.mOrientation == 0) {
                        int width = constraintWidget2.getWidth();
                        int i11 = flow2.mHorizontalGap;
                        if (constraintWidget2.mVisibility == 8) {
                            i11 = 0;
                        }
                        this.mWidth = width + i11 + this.mWidth;
                        int widgetHeight = flow2.getWidgetHeight(constraintWidget2, this.mMax);
                        if (this.biggest == null || this.biggestDimension < widgetHeight) {
                            this.biggest = constraintWidget2;
                            this.biggestDimension = widgetHeight;
                            this.mHeight = widgetHeight;
                        }
                    } else {
                        int widgetWidth = flow2.getWidgetWidth(constraintWidget2, this.mMax);
                        int widgetHeight2 = flow2.getWidgetHeight(constraintWidget2, this.mMax);
                        int i12 = flow2.mVerticalGap;
                        if (constraintWidget2.mVisibility == 8) {
                            i12 = 0;
                        }
                        this.mHeight = widgetHeight2 + i12 + this.mHeight;
                        if (this.biggest == null || this.biggestDimension < widgetWidth) {
                            this.biggest = constraintWidget2;
                            this.biggestDimension = widgetWidth;
                            this.mWidth = widgetWidth;
                        }
                    }
                } else {
                    return;
                }
            }
        }

        public final void setup(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2, int i3, int i4, int i5, int i6) {
            this.mOrientation = i;
            this.mLeft = constraintAnchor;
            this.mTop = constraintAnchor2;
            this.mRight = constraintAnchor3;
            this.mBottom = constraintAnchor4;
            this.mPaddingLeft = i2;
            this.mPaddingTop = i3;
            this.mPaddingRight = i4;
            this.mPaddingBottom = i5;
            this.mMax = i6;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget constraintWidget;
        float f;
        int i;
        boolean z4;
        super.addToSolver(linearSystem, z);
        ConstraintWidget constraintWidget2 = this.mParent;
        if (constraintWidget2 != null && ((ConstraintWidgetContainer) constraintWidget2).mIsRtl) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i2 = this.mWrapMode;
        ArrayList arrayList = this.mChainList;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            WidgetsList widgetsList = (WidgetsList) arrayList.get(i3);
                            if (i3 == size - 1) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            widgetsList.createConstraints(i3, z2, z4);
                        }
                    }
                } else if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
                    for (int i4 = 0; i4 < this.mDisplayedWidgetsCount; i4++) {
                        this.mDisplayedWidgets[i4].resetAnchors();
                    }
                    int[] iArr = this.mAlignedDimensions;
                    int i5 = iArr[0];
                    int i6 = iArr[1];
                    float f2 = this.mHorizontalBias;
                    ConstraintWidget constraintWidget3 = null;
                    int i7 = 0;
                    while (i7 < i5) {
                        if (z2) {
                            i = (i5 - i7) - 1;
                            f = 1.0f - this.mHorizontalBias;
                        } else {
                            f = f2;
                            i = i7;
                        }
                        ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInCols[i];
                        if (constraintWidget4 != null && constraintWidget4.mVisibility != 8) {
                            ConstraintAnchor constraintAnchor = constraintWidget4.mLeft;
                            if (i7 == 0) {
                                constraintWidget4.connect(constraintAnchor, this.mLeft, this.mResolvedPaddingLeft);
                                constraintWidget4.mHorizontalChainStyle = this.mHorizontalStyle;
                                constraintWidget4.mHorizontalBiasPercent = f;
                            }
                            if (i7 == i5 - 1) {
                                constraintWidget4.connect(constraintWidget4.mRight, this.mRight, this.mResolvedPaddingRight);
                            }
                            if (i7 > 0 && constraintWidget3 != null) {
                                int i8 = this.mHorizontalGap;
                                ConstraintAnchor constraintAnchor2 = constraintWidget3.mRight;
                                constraintWidget4.connect(constraintAnchor, constraintAnchor2, i8);
                                constraintWidget3.connect(constraintAnchor2, constraintAnchor, 0);
                            }
                            constraintWidget3 = constraintWidget4;
                        }
                        i7++;
                        f2 = f;
                    }
                    for (int i9 = 0; i9 < i6; i9++) {
                        ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInRows[i9];
                        if (constraintWidget5 != null && constraintWidget5.mVisibility != 8) {
                            ConstraintAnchor constraintAnchor3 = constraintWidget5.mTop;
                            if (i9 == 0) {
                                constraintWidget5.connect(constraintAnchor3, this.mTop, this.mPaddingTop);
                                constraintWidget5.mVerticalChainStyle = this.mVerticalStyle;
                                constraintWidget5.mVerticalBiasPercent = this.mVerticalBias;
                            }
                            if (i9 == i6 - 1) {
                                constraintWidget5.connect(constraintWidget5.mBottom, this.mBottom, this.mPaddingBottom);
                            }
                            if (i9 > 0 && constraintWidget3 != null) {
                                int i10 = this.mVerticalGap;
                                ConstraintAnchor constraintAnchor4 = constraintWidget3.mBottom;
                                constraintWidget5.connect(constraintAnchor3, constraintAnchor4, i10);
                                constraintWidget3.connect(constraintAnchor4, constraintAnchor3, 0);
                            }
                            constraintWidget3 = constraintWidget5;
                        }
                    }
                    for (int i11 = 0; i11 < i5; i11++) {
                        for (int i12 = 0; i12 < i6; i12++) {
                            int i13 = (i12 * i5) + i11;
                            if (this.mOrientation == 1) {
                                i13 = (i11 * i6) + i12;
                            }
                            ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                            if (i13 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i13]) != null && constraintWidget.mVisibility != 8) {
                                ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInCols[i11];
                                ConstraintWidget constraintWidget7 = this.mAlignedBiggestElementsInRows[i12];
                                if (constraintWidget != constraintWidget6) {
                                    constraintWidget.connect(constraintWidget.mLeft, constraintWidget6.mLeft, 0);
                                    constraintWidget.connect(constraintWidget.mRight, constraintWidget6.mRight, 0);
                                }
                                if (constraintWidget != constraintWidget7) {
                                    constraintWidget.connect(constraintWidget.mTop, constraintWidget7.mTop, 0);
                                    constraintWidget.connect(constraintWidget.mBottom, constraintWidget7.mBottom, 0);
                                }
                            }
                        }
                    }
                }
            } else {
                int size2 = arrayList.size();
                for (int i14 = 0; i14 < size2; i14++) {
                    WidgetsList widgetsList2 = (WidgetsList) arrayList.get(i14);
                    if (i14 == size2 - 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    widgetsList2.createConstraints(i14, z2, z3);
                }
            }
        } else if (arrayList.size() > 0) {
            ((WidgetsList) arrayList.get(0)).createConstraints(0, z2, true);
        }
        this.mNeedsCallFromSolver = false;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void copy(ConstraintWidget constraintWidget, HashMap hashMap) {
        super.copy(constraintWidget, hashMap);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    public final int getWidgetHeight(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.mListDimensionBehaviors[1] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentHeight * i);
                if (i3 != constraintWidget.getHeight()) {
                    constraintWidget.mMeasureRequested = true;
                    measure(constraintWidget, constraintWidget.mListDimensionBehaviors[0], constraintWidget.getWidth(), ConstraintWidget.DimensionBehaviour.FIXED, i3);
                }
                return i3;
            }
            if (i2 == 1) {
                return constraintWidget.getHeight();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget.getWidth() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getHeight();
    }

    public final int getWidgetWidth(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.mListDimensionBehaviors[0] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int i2 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (constraintWidget.mMatchConstraintPercentWidth * i);
                if (i3 != constraintWidget.getWidth()) {
                    constraintWidget.mMeasureRequested = true;
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, i3, constraintWidget.mListDimensionBehaviors[1], constraintWidget.getHeight());
                }
                return i3;
            }
            if (i2 == 1) {
                return constraintWidget.getWidth();
            }
            if (i2 == 3) {
                return (int) ((constraintWidget.getHeight() * constraintWidget.mDimensionRatio) + 0.5f);
            }
        }
        return constraintWidget.getWidth();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x081f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x084d  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x084f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0832  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0821  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x041e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:276:0x0515 -> B:216:0x0523). Please report as a decompilation issue!!! */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void measure(int r38, int r39, int r40, int r41) {
        /*
            Method dump skipped, instructions count: 2132
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measure(int, int, int, int):void");
    }
}
