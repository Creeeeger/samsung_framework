package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class Flow extends VirtualLayout {
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    private class WidgetsList {
        private ConstraintAnchor mBottom;
        private ConstraintAnchor mLeft;
        private int mMax;
        private int mOrientation;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private ConstraintAnchor mRight;
        private ConstraintAnchor mTop;
        private ConstraintWidget mBiggest = null;
        int mBiggestDimension = 0;
        private int mWidth = 0;
        private int mHeight = 0;
        private int mStartIndex = 0;
        private int mCount = 0;
        private int mNbMatchConstraintsWidgets = 0;

        WidgetsList(int i, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i2) {
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
            this.mPaddingLeft = Flow.this.getPaddingLeft();
            this.mPaddingTop = Flow.this.getPaddingTop();
            this.mPaddingRight = Flow.this.getPaddingRight();
            this.mPaddingBottom = Flow.this.getPaddingBottom();
            this.mMax = i2;
        }

        public final void add(ConstraintWidget constraintWidget) {
            int i = this.mOrientation;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            Flow flow = Flow.this;
            if (i == 0) {
                int access$200 = Flow.access$200(flow, constraintWidget, this.mMax);
                if (constraintWidget.mListDimensionBehaviors[0] == dimensionBehaviour) {
                    this.mNbMatchConstraintsWidgets++;
                    access$200 = 0;
                }
                this.mWidth = access$200 + (constraintWidget.getVisibility() != 8 ? flow.mHorizontalGap : 0) + this.mWidth;
                int access$300 = Flow.access$300(flow, constraintWidget, this.mMax);
                if (this.mBiggest == null || this.mBiggestDimension < access$300) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = access$300;
                    this.mHeight = access$300;
                }
            } else {
                int access$2002 = Flow.access$200(flow, constraintWidget, this.mMax);
                int access$3002 = Flow.access$300(flow, constraintWidget, this.mMax);
                if (constraintWidget.mListDimensionBehaviors[1] == dimensionBehaviour) {
                    this.mNbMatchConstraintsWidgets++;
                    access$3002 = 0;
                }
                this.mHeight = access$3002 + (constraintWidget.getVisibility() != 8 ? flow.mVerticalGap : 0) + this.mHeight;
                if (this.mBiggest == null || this.mBiggestDimension < access$2002) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = access$2002;
                    this.mWidth = access$2002;
                }
            }
            this.mCount++;
        }

        public final void clear() {
            this.mBiggestDimension = 0;
            this.mBiggest = null;
            this.mWidth = 0;
            this.mHeight = 0;
            this.mStartIndex = 0;
            this.mCount = 0;
            this.mNbMatchConstraintsWidgets = 0;
        }

        public final void createConstraints(int i, boolean z, boolean z2) {
            Flow flow;
            boolean z3;
            ConstraintWidget constraintWidget;
            char c;
            float f;
            int i2 = this.mCount;
            int i3 = 0;
            while (true) {
                flow = Flow.this;
                if (i3 >= i2 || this.mStartIndex + i3 >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget2 = flow.mDisplayedWidgets[this.mStartIndex + i3];
                if (constraintWidget2 != null) {
                    constraintWidget2.resetAnchors();
                }
                i3++;
            }
            if (i2 == 0 || this.mBiggest == null) {
                return;
            }
            boolean z4 = z2 && i == 0;
            int i4 = -1;
            int i5 = -1;
            for (int i6 = 0; i6 < i2; i6++) {
                int i7 = z ? (i2 - 1) - i6 : i6;
                if (this.mStartIndex + i7 >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget3 = flow.mDisplayedWidgets[this.mStartIndex + i7];
                if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                    if (i4 == -1) {
                        i4 = i6;
                    }
                    i5 = i6;
                }
            }
            ConstraintWidget constraintWidget4 = null;
            if (this.mOrientation != 0) {
                ConstraintWidget constraintWidget5 = this.mBiggest;
                constraintWidget5.mHorizontalChainStyle = flow.mHorizontalStyle;
                int i8 = this.mPaddingLeft;
                if (i > 0) {
                    i8 += flow.mHorizontalGap;
                }
                if (z) {
                    constraintWidget5.mRight.connect(this.mRight, i8);
                    if (z2) {
                        constraintWidget5.mLeft.connect(this.mLeft, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mRight.mOwner.mLeft.connect(constraintWidget5.mRight, 0);
                    }
                } else {
                    constraintWidget5.mLeft.connect(this.mLeft, i8);
                    if (z2) {
                        constraintWidget5.mRight.connect(this.mRight, this.mPaddingRight);
                    }
                    if (i > 0) {
                        this.mLeft.mOwner.mRight.connect(constraintWidget5.mLeft, 0);
                    }
                }
                for (int i9 = 0; i9 < i2 && this.mStartIndex + i9 < flow.mDisplayedWidgetsCount; i9++) {
                    ConstraintWidget constraintWidget6 = flow.mDisplayedWidgets[this.mStartIndex + i9];
                    if (constraintWidget6 != null) {
                        if (i9 == 0) {
                            constraintWidget6.connect(constraintWidget6.mTop, this.mTop, this.mPaddingTop);
                            int i10 = flow.mVerticalStyle;
                            float f2 = flow.mVerticalBias;
                            if (this.mStartIndex == 0 && flow.mFirstVerticalStyle != -1) {
                                i10 = flow.mFirstVerticalStyle;
                                f2 = flow.mFirstVerticalBias;
                            } else if (z2 && flow.mLastVerticalStyle != -1) {
                                i10 = flow.mLastVerticalStyle;
                                f2 = flow.mLastVerticalBias;
                            }
                            constraintWidget6.mVerticalChainStyle = i10;
                            constraintWidget6.mVerticalBiasPercent = f2;
                        }
                        if (i9 == i2 - 1) {
                            constraintWidget6.connect(constraintWidget6.mBottom, this.mBottom, this.mPaddingBottom);
                        }
                        if (constraintWidget4 != null) {
                            constraintWidget6.mTop.connect(constraintWidget4.mBottom, flow.mVerticalGap);
                            if (i9 == i4) {
                                ConstraintAnchor constraintAnchor = constraintWidget6.mTop;
                                int i11 = this.mPaddingTop;
                                if (constraintAnchor.isConnected()) {
                                    constraintAnchor.mGoneMargin = i11;
                                }
                            }
                            constraintWidget4.mBottom.connect(constraintWidget6.mTop, 0);
                            if (i9 == i5 + 1) {
                                ConstraintAnchor constraintAnchor2 = constraintWidget4.mBottom;
                                int i12 = this.mPaddingBottom;
                                if (constraintAnchor2.isConnected()) {
                                    constraintAnchor2.mGoneMargin = i12;
                                }
                            }
                        }
                        if (constraintWidget6 != constraintWidget5) {
                            if (z) {
                                int i13 = flow.mHorizontalAlign;
                                if (i13 == 0) {
                                    z3 = false;
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                } else if (i13 == 1) {
                                    z3 = false;
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                } else if (i13 == 2) {
                                    z3 = false;
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                }
                            } else {
                                int i14 = flow.mHorizontalAlign;
                                if (i14 == 0) {
                                    constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                } else if (i14 == 1) {
                                    constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                } else if (i14 == 2) {
                                    if (z4) {
                                        constraintWidget6.mLeft.connect(this.mLeft, this.mPaddingLeft);
                                        constraintWidget6.mRight.connect(this.mRight, this.mPaddingRight);
                                    } else {
                                        constraintWidget6.mLeft.connect(constraintWidget5.mLeft, 0);
                                        constraintWidget6.mRight.connect(constraintWidget5.mRight, 0);
                                    }
                                }
                            }
                            constraintWidget4 = constraintWidget6;
                        }
                        constraintWidget4 = constraintWidget6;
                    }
                }
                return;
            }
            ConstraintWidget constraintWidget7 = this.mBiggest;
            constraintWidget7.mVerticalChainStyle = flow.mVerticalStyle;
            int i15 = this.mPaddingTop;
            if (i > 0) {
                i15 += flow.mVerticalGap;
            }
            constraintWidget7.mTop.connect(this.mTop, i15);
            if (z2) {
                constraintWidget7.mBottom.connect(this.mBottom, this.mPaddingBottom);
            }
            if (i > 0) {
                this.mTop.mOwner.mBottom.connect(constraintWidget7.mTop, 0);
            }
            if (flow.mVerticalAlign == 3 && !constraintWidget7.hasBaseline()) {
                for (int i16 = 0; i16 < i2; i16++) {
                    int i17 = z ? (i2 - 1) - i16 : i16;
                    if (this.mStartIndex + i17 >= flow.mDisplayedWidgetsCount) {
                        break;
                    }
                    constraintWidget = flow.mDisplayedWidgets[this.mStartIndex + i17];
                    if (constraintWidget.hasBaseline()) {
                        break;
                    }
                }
            }
            constraintWidget = constraintWidget7;
            for (int i18 = 0; i18 < i2; i18++) {
                int i19 = z ? (i2 - 1) - i18 : i18;
                if (this.mStartIndex + i19 >= flow.mDisplayedWidgetsCount) {
                    return;
                }
                ConstraintWidget constraintWidget8 = flow.mDisplayedWidgets[this.mStartIndex + i19];
                if (constraintWidget8 == null) {
                    c = 3;
                } else {
                    if (i18 == 0) {
                        constraintWidget8.connect(constraintWidget8.mLeft, this.mLeft, this.mPaddingLeft);
                    }
                    if (i19 == 0) {
                        int i20 = flow.mHorizontalStyle;
                        float f3 = flow.mHorizontalBias;
                        if (z) {
                            f3 = 1.0f - f3;
                        }
                        if (this.mStartIndex != 0 || flow.mFirstHorizontalStyle == -1) {
                            if (z2 && flow.mLastHorizontalStyle != -1) {
                                i20 = flow.mLastHorizontalStyle;
                                if (z) {
                                    f = flow.mLastHorizontalBias;
                                    f3 = 1.0f - f;
                                } else {
                                    f3 = flow.mLastHorizontalBias;
                                }
                            }
                            constraintWidget8.mHorizontalChainStyle = i20;
                            constraintWidget8.mHorizontalBiasPercent = f3;
                        } else {
                            i20 = flow.mFirstHorizontalStyle;
                            if (z) {
                                f = flow.mFirstHorizontalBias;
                                f3 = 1.0f - f;
                                constraintWidget8.mHorizontalChainStyle = i20;
                                constraintWidget8.mHorizontalBiasPercent = f3;
                            } else {
                                f3 = flow.mFirstHorizontalBias;
                                constraintWidget8.mHorizontalChainStyle = i20;
                                constraintWidget8.mHorizontalBiasPercent = f3;
                            }
                        }
                    }
                    if (i18 == i2 - 1) {
                        constraintWidget8.connect(constraintWidget8.mRight, this.mRight, this.mPaddingRight);
                    }
                    if (constraintWidget4 != null) {
                        constraintWidget8.mLeft.connect(constraintWidget4.mRight, flow.mHorizontalGap);
                        if (i18 == i4) {
                            ConstraintAnchor constraintAnchor3 = constraintWidget8.mLeft;
                            int i21 = this.mPaddingLeft;
                            if (constraintAnchor3.isConnected()) {
                                constraintAnchor3.mGoneMargin = i21;
                            }
                        }
                        constraintWidget4.mRight.connect(constraintWidget8.mLeft, 0);
                        if (i18 == i5 + 1) {
                            ConstraintAnchor constraintAnchor4 = constraintWidget4.mRight;
                            int i22 = this.mPaddingRight;
                            if (constraintAnchor4.isConnected()) {
                                constraintAnchor4.mGoneMargin = i22;
                            }
                        }
                    }
                    if (constraintWidget8 != constraintWidget7) {
                        c = 3;
                        if (flow.mVerticalAlign == 3 && constraintWidget.hasBaseline() && constraintWidget8 != constraintWidget && constraintWidget8.hasBaseline()) {
                            constraintWidget8.mBaseline.connect(constraintWidget.mBaseline, 0);
                        } else {
                            int i23 = flow.mVerticalAlign;
                            if (i23 == 0) {
                                constraintWidget8.mTop.connect(constraintWidget7.mTop, 0);
                            } else if (i23 == 1) {
                                constraintWidget8.mBottom.connect(constraintWidget7.mBottom, 0);
                            } else if (z4) {
                                constraintWidget8.mTop.connect(this.mTop, this.mPaddingTop);
                                constraintWidget8.mBottom.connect(this.mBottom, this.mPaddingBottom);
                            } else {
                                constraintWidget8.mTop.connect(constraintWidget7.mTop, 0);
                                constraintWidget8.mBottom.connect(constraintWidget7.mBottom, 0);
                            }
                        }
                    } else {
                        c = 3;
                    }
                    constraintWidget4 = constraintWidget8;
                }
            }
        }

        public final int getHeight() {
            return this.mOrientation == 1 ? this.mHeight - Flow.this.mVerticalGap : this.mHeight;
        }

        public final int getWidth() {
            return this.mOrientation == 0 ? this.mWidth - Flow.this.mHorizontalGap : this.mWidth;
        }

        public final void measureMatchConstraints(int i) {
            Flow flow;
            int i2 = this.mNbMatchConstraintsWidgets;
            if (i2 == 0) {
                return;
            }
            int i3 = this.mCount;
            int i4 = i / i2;
            int i5 = 0;
            while (true) {
                flow = Flow.this;
                if (i5 >= i3 || this.mStartIndex + i5 >= flow.mDisplayedWidgetsCount) {
                    break;
                }
                ConstraintWidget constraintWidget = flow.mDisplayedWidgets[this.mStartIndex + i5];
                int i6 = this.mOrientation;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (i6 == 0) {
                    if (constraintWidget != null) {
                        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                        if (dimensionBehaviourArr[0] == dimensionBehaviour2 && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            Flow.this.measure(constraintWidget, dimensionBehaviour, i4, dimensionBehaviourArr[1], constraintWidget.getHeight());
                        }
                    }
                } else if (constraintWidget != null) {
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.mListDimensionBehaviors;
                    if (dimensionBehaviourArr2[1] == dimensionBehaviour2 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                        Flow.this.measure(constraintWidget, dimensionBehaviourArr2[0], constraintWidget.getWidth(), dimensionBehaviour, i4);
                    }
                }
                i5++;
            }
            this.mWidth = 0;
            this.mHeight = 0;
            this.mBiggest = null;
            this.mBiggestDimension = 0;
            int i7 = this.mCount;
            for (int i8 = 0; i8 < i7 && this.mStartIndex + i8 < flow.mDisplayedWidgetsCount; i8++) {
                ConstraintWidget constraintWidget2 = flow.mDisplayedWidgets[this.mStartIndex + i8];
                if (this.mOrientation == 0) {
                    int width = constraintWidget2.getWidth();
                    int i9 = flow.mHorizontalGap;
                    if (constraintWidget2.getVisibility() == 8) {
                        i9 = 0;
                    }
                    this.mWidth = width + i9 + this.mWidth;
                    int access$300 = Flow.access$300(flow, constraintWidget2, this.mMax);
                    if (this.mBiggest == null || this.mBiggestDimension < access$300) {
                        this.mBiggest = constraintWidget2;
                        this.mBiggestDimension = access$300;
                        this.mHeight = access$300;
                    }
                } else {
                    int access$200 = Flow.access$200(flow, constraintWidget2, this.mMax);
                    int access$3002 = Flow.access$300(flow, constraintWidget2, this.mMax);
                    int i10 = flow.mVerticalGap;
                    if (constraintWidget2.getVisibility() == 8) {
                        i10 = 0;
                    }
                    this.mHeight = access$3002 + i10 + this.mHeight;
                    if (this.mBiggest == null || this.mBiggestDimension < access$200) {
                        this.mBiggest = constraintWidget2;
                        this.mBiggestDimension = access$200;
                        this.mWidth = access$200;
                    }
                }
            }
        }

        public final void setStartIndex(int i) {
            this.mStartIndex = i;
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

    static /* synthetic */ int access$200(Flow flow, ConstraintWidget constraintWidget, int i) {
        return flow.getWidgetWidth(i, constraintWidget);
    }

    static /* synthetic */ int access$300(Flow flow, ConstraintWidget constraintWidget, int i) {
        return flow.getWidgetHeight(i, constraintWidget);
    }

    private int getWidgetHeight(int i, ConstraintWidget constraintWidget) {
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
                    constraintWidget.setMeasureRequested();
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

    private int getWidgetWidth(int i, ConstraintWidget constraintWidget) {
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
                    constraintWidget.setMeasureRequested();
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

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void addToSolver(LinearSystem linearSystem, boolean z) {
        ConstraintWidget constraintWidget;
        float f;
        int i;
        super.addToSolver(linearSystem, z);
        ConstraintWidget constraintWidget2 = this.mParent;
        boolean z2 = constraintWidget2 != null && ((ConstraintWidgetContainer) constraintWidget2).isRtl();
        int i2 = this.mWrapMode;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = this.mChainList.size();
                int i3 = 0;
                while (i3 < size) {
                    this.mChainList.get(i3).createConstraints(i3, z2, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = this.mChainList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        this.mChainList.get(i4).createConstraints(i4, z2, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.mAlignedDimensions != null && this.mAlignedBiggestElementsInCols != null && this.mAlignedBiggestElementsInRows != null) {
                for (int i5 = 0; i5 < this.mDisplayedWidgetsCount; i5++) {
                    this.mDisplayedWidgets[i5].resetAnchors();
                }
                int[] iArr = this.mAlignedDimensions;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f2 = this.mHorizontalBias;
                ConstraintWidget constraintWidget3 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f = 1.0f - this.mHorizontalBias;
                    } else {
                        f = f2;
                        i = i8;
                    }
                    ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInCols[i];
                    if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                        if (i8 == 0) {
                            constraintWidget4.connect(constraintWidget4.mLeft, this.mLeft, getPaddingLeft());
                            constraintWidget4.mHorizontalChainStyle = this.mHorizontalStyle;
                            constraintWidget4.mHorizontalBiasPercent = f;
                        }
                        if (i8 == i6 - 1) {
                            constraintWidget4.connect(constraintWidget4.mRight, this.mRight, getPaddingRight());
                        }
                        if (i8 > 0 && constraintWidget3 != null) {
                            constraintWidget4.connect(constraintWidget4.mLeft, constraintWidget3.mRight, this.mHorizontalGap);
                            constraintWidget3.connect(constraintWidget3.mRight, constraintWidget4.mLeft, 0);
                        }
                        constraintWidget3 = constraintWidget4;
                    }
                    i8++;
                    f2 = f;
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInRows[i9];
                    if (constraintWidget5 != null && constraintWidget5.getVisibility() != 8) {
                        if (i9 == 0) {
                            constraintWidget5.connect(constraintWidget5.mTop, this.mTop, getPaddingTop());
                            constraintWidget5.mVerticalChainStyle = this.mVerticalStyle;
                            constraintWidget5.mVerticalBiasPercent = this.mVerticalBias;
                        }
                        if (i9 == i7 - 1) {
                            constraintWidget5.connect(constraintWidget5.mBottom, this.mBottom, getPaddingBottom());
                        }
                        if (i9 > 0 && constraintWidget3 != null) {
                            constraintWidget5.connect(constraintWidget5.mTop, constraintWidget3.mBottom, this.mVerticalGap);
                            constraintWidget3.connect(constraintWidget3.mBottom, constraintWidget5.mTop, 0);
                        }
                        constraintWidget3 = constraintWidget5;
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.mOrientation == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                        if (i12 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i12]) != null && constraintWidget.getVisibility() != 8) {
                            ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInCols[i10];
                            ConstraintWidget constraintWidget7 = this.mAlignedBiggestElementsInRows[i11];
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
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).createConstraints(0, z2, true);
        }
        needsCallbackFromSolver(false);
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public final void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:241:0x03d5  */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v76 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:264:0x0488 -> B:209:0x0498). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:265:0x048a -> B:209:0x0498). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:267:0x0490 -> B:209:0x0498). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:268:0x0492 -> B:209:0x0498). Please report as a decompilation issue!!! */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void measure(int r36, int r37, int r38, int r39) {
        /*
            Method dump skipped, instructions count: 1932
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measure(int, int, int, int):void");
    }

    public final void setFirstHorizontalBias(float f) {
        this.mFirstHorizontalBias = f;
    }

    public final void setFirstHorizontalStyle(int i) {
        this.mFirstHorizontalStyle = i;
    }

    public final void setFirstVerticalBias(float f) {
        this.mFirstVerticalBias = f;
    }

    public final void setFirstVerticalStyle(int i) {
        this.mFirstVerticalStyle = i;
    }

    public final void setHorizontalAlign(int i) {
        this.mHorizontalAlign = i;
    }

    public final void setHorizontalBias(float f) {
        this.mHorizontalBias = f;
    }

    public final void setHorizontalGap(int i) {
        this.mHorizontalGap = i;
    }

    public final void setHorizontalStyle(int i) {
        this.mHorizontalStyle = i;
    }

    public final void setLastHorizontalBias(float f) {
        this.mLastHorizontalBias = f;
    }

    public final void setLastHorizontalStyle(int i) {
        this.mLastHorizontalStyle = i;
    }

    public final void setLastVerticalBias(float f) {
        this.mLastVerticalBias = f;
    }

    public final void setLastVerticalStyle(int i) {
        this.mLastVerticalStyle = i;
    }

    public final void setMaxElementsWrap(int i) {
        this.mMaxElementsWrap = i;
    }

    public final void setOrientation(int i) {
        this.mOrientation = i;
    }

    public final void setVerticalAlign(int i) {
        this.mVerticalAlign = i;
    }

    public final void setVerticalBias(float f) {
        this.mVerticalBias = f;
    }

    public final void setVerticalGap(int i) {
        this.mVerticalGap = i;
    }

    public final void setVerticalStyle(int i) {
        this.mVerticalStyle = i;
    }

    public final void setWrapMode(int i) {
        this.mWrapMode = i;
    }
}
