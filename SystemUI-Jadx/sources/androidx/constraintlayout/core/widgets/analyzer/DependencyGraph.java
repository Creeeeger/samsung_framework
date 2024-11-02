package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DependencyGraph {
    public final ConstraintWidgetContainer container;
    public final ConstraintWidgetContainer mContainer;
    public final ArrayList mGroups;
    public final BasicMeasure.Measure mMeasure;
    public BasicMeasure.Measurer mMeasurer;
    public boolean mNeedBuildGraph = true;
    public boolean mNeedRedoMeasures = true;
    public final ArrayList mRuns = new ArrayList();

    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        new ArrayList();
        this.mMeasurer = null;
        this.mMeasure = new BasicMeasure.Measure();
        this.mGroups = new ArrayList();
        this.container = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    public final void applyGroup(DependencyNode dependencyNode, int i, int i2, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.run;
        if (widgetRun.runGroup == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.container;
            if (widgetRun != constraintWidgetContainer.horizontalRun && widgetRun != constraintWidgetContainer.verticalRun) {
                if (runGroup == null) {
                    runGroup = new RunGroup(widgetRun, i2);
                    arrayList.add(runGroup);
                }
                widgetRun.runGroup = runGroup;
                runGroup.runs.add(widgetRun);
                DependencyNode dependencyNode2 = widgetRun.start;
                Iterator it = ((ArrayList) dependencyNode2.dependencies).iterator();
                while (it.hasNext()) {
                    Dependency dependency = (Dependency) it.next();
                    if (dependency instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency, i, 0, arrayList, runGroup);
                    }
                }
                DependencyNode dependencyNode3 = widgetRun.end;
                Iterator it2 = ((ArrayList) dependencyNode3.dependencies).iterator();
                while (it2.hasNext()) {
                    Dependency dependency2 = (Dependency) it2.next();
                    if (dependency2 instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency2, i, 1, arrayList, runGroup);
                    }
                }
                if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                    Iterator it3 = ((ArrayList) ((VerticalWidgetRun) widgetRun).baseline.dependencies).iterator();
                    while (it3.hasNext()) {
                        Dependency dependency3 = (Dependency) it3.next();
                        if (dependency3 instanceof DependencyNode) {
                            applyGroup((DependencyNode) dependency3, i, 2, arrayList, runGroup);
                        }
                    }
                }
                Iterator it4 = ((ArrayList) dependencyNode2.targets).iterator();
                while (it4.hasNext()) {
                    applyGroup((DependencyNode) it4.next(), i, 0, arrayList, runGroup);
                }
                Iterator it5 = ((ArrayList) dependencyNode3.targets).iterator();
                while (it5.hasNext()) {
                    applyGroup((DependencyNode) it5.next(), i, 1, arrayList, runGroup);
                }
                if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                    Iterator it6 = ((ArrayList) ((VerticalWidgetRun) widgetRun).baseline.targets).iterator();
                    while (it6.hasNext()) {
                        applyGroup((DependencyNode) it6.next(), i, 2, arrayList, runGroup);
                    }
                }
            }
        }
    }

    public final void basicMeasureWidgets(ConstraintWidgetContainer constraintWidgetContainer) {
        int i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        Iterator it = constraintWidgetContainer.mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[1];
            if (constraintWidget.mVisibility == 8) {
                constraintWidget.measured = true;
            } else {
                float f = constraintWidget.mMatchConstraintPercentWidth;
                if (f < 1.0f && dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultWidth = 2;
                }
                float f2 = constraintWidget.mMatchConstraintPercentHeight;
                if (f2 < 1.0f && dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget.mMatchConstraintDefaultHeight = 2;
                }
                if (constraintWidget.mDimensionRatio > 0.0f) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour6 && (dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour5 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultWidth = 3;
                    } else if (dimensionBehaviour5 == dimensionBehaviour6 && (dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        constraintWidget.mMatchConstraintDefaultHeight = 3;
                    } else if (dimensionBehaviour4 == dimensionBehaviour6 && dimensionBehaviour5 == dimensionBehaviour6) {
                        if (constraintWidget.mMatchConstraintDefaultWidth == 0) {
                            constraintWidget.mMatchConstraintDefaultWidth = 3;
                        }
                        if (constraintWidget.mMatchConstraintDefaultHeight == 0) {
                            constraintWidget.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour7 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                ConstraintAnchor constraintAnchor = constraintWidget.mRight;
                ConstraintAnchor constraintAnchor2 = constraintWidget.mLeft;
                if (dimensionBehaviour4 == dimensionBehaviour7 && constraintWidget.mMatchConstraintDefaultWidth == 1 && (constraintAnchor2.mTarget == null || constraintAnchor.mTarget == null)) {
                    dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintAnchor constraintAnchor3 = constraintWidget.mBottom;
                ConstraintAnchor constraintAnchor4 = constraintWidget.mTop;
                if (dimensionBehaviour5 == dimensionBehaviour7 && constraintWidget.mMatchConstraintDefaultHeight == 1 && (constraintAnchor4.mTarget == null || constraintAnchor3.mTarget == null)) {
                    dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour8 = dimensionBehaviour5;
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget.horizontalRun;
                horizontalWidgetRun.dimensionBehavior = dimensionBehaviour4;
                int i2 = constraintWidget.mMatchConstraintDefaultWidth;
                horizontalWidgetRun.matchConstraintsType = i2;
                VerticalWidgetRun verticalWidgetRun = constraintWidget.verticalRun;
                verticalWidgetRun.dimensionBehavior = dimensionBehaviour8;
                int i3 = constraintWidget.mMatchConstraintDefaultHeight;
                verticalWidgetRun.matchConstraintsType = i3;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour9 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if ((dimensionBehaviour4 != dimensionBehaviour9 && dimensionBehaviour4 != ConstraintWidget.DimensionBehaviour.FIXED && dimensionBehaviour4 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || (dimensionBehaviour8 != dimensionBehaviour9 && dimensionBehaviour8 != ConstraintWidget.DimensionBehaviour.FIXED && dimensionBehaviour8 != ConstraintWidget.DimensionBehaviour.WRAP_CONTENT)) {
                    ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
                    if (dimensionBehaviour4 == dimensionBehaviour7 && (dimensionBehaviour8 == (dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour8 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i2 == 3) {
                            if (dimensionBehaviour8 == dimensionBehaviour3) {
                                measure(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour3, 0);
                            }
                            int height = constraintWidget.getHeight();
                            int i4 = (int) ((height * constraintWidget.mDimensionRatio) + 0.5f);
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour10 = ConstraintWidget.DimensionBehaviour.FIXED;
                            measure(constraintWidget, dimensionBehaviour10, i4, dimensionBehaviour10, height);
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = true;
                        } else if (i2 == 1) {
                            measure(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour8, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                        } else {
                            dimensionBehaviour = dimensionBehaviour8;
                            if (i2 == 2) {
                                ConstraintWidget.DimensionBehaviour dimensionBehaviour11 = constraintWidgetContainer.mListDimensionBehaviors[0];
                                ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = ConstraintWidget.DimensionBehaviour.FIXED;
                                if (dimensionBehaviour11 == dimensionBehaviour12 || dimensionBehaviour11 == dimensionBehaviour9) {
                                    measure(constraintWidget, dimensionBehaviour12, (int) ((f * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour, constraintWidget.getHeight());
                                    constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                    constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                    constraintWidget.measured = true;
                                }
                            } else if (constraintAnchorArr[0].mTarget == null || constraintAnchorArr[1].mTarget == null) {
                                measure(constraintWidget, dimensionBehaviour3, 0, dimensionBehaviour, 0);
                                constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                constraintWidget.measured = true;
                            }
                        }
                    } else {
                        dimensionBehaviour = dimensionBehaviour8;
                    }
                    if (dimensionBehaviour == dimensionBehaviour7 && (dimensionBehaviour4 == (dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour4 == ConstraintWidget.DimensionBehaviour.FIXED)) {
                        if (i3 == 3) {
                            if (dimensionBehaviour4 == dimensionBehaviour2) {
                                measure(constraintWidget, dimensionBehaviour2, 0, dimensionBehaviour2, 0);
                            }
                            int width = constraintWidget.getWidth();
                            float f3 = constraintWidget.mDimensionRatio;
                            if (constraintWidget.mDimensionRatioSide == -1) {
                                f3 = 1.0f / f3;
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = ConstraintWidget.DimensionBehaviour.FIXED;
                            measure(constraintWidget, dimensionBehaviour13, width, dimensionBehaviour13, (int) ((width * f3) + 0.5f));
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = true;
                        } else if (i3 == 1) {
                            measure(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour2, 0);
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                        } else if (i3 == 2) {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = constraintWidgetContainer.mListDimensionBehaviors[1];
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.FIXED;
                            if (dimensionBehaviour14 == dimensionBehaviour15 || dimensionBehaviour14 == dimensionBehaviour9) {
                                measure(constraintWidget, dimensionBehaviour4, constraintWidget.getWidth(), dimensionBehaviour15, (int) ((f2 * constraintWidgetContainer.getHeight()) + 0.5f));
                                constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                constraintWidget.measured = true;
                            }
                        } else if (constraintAnchorArr[2].mTarget == null || constraintAnchorArr[3].mTarget == null) {
                            measure(constraintWidget, dimensionBehaviour2, 0, dimensionBehaviour, 0);
                            constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                            constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                            constraintWidget.measured = true;
                        }
                    }
                    if (dimensionBehaviour4 == dimensionBehaviour7 && dimensionBehaviour == dimensionBehaviour7) {
                        if (i2 != 1 && i3 != 1) {
                            if (i3 == 2 && i2 == 2) {
                                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
                                ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = dimensionBehaviourArr2[0];
                                ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = ConstraintWidget.DimensionBehaviour.FIXED;
                                if (dimensionBehaviour16 == dimensionBehaviour17 && dimensionBehaviourArr2[1] == dimensionBehaviour17) {
                                    measure(constraintWidget, dimensionBehaviour17, (int) ((f * constraintWidgetContainer.getWidth()) + 0.5f), dimensionBehaviour17, (int) ((f2 * constraintWidgetContainer.getHeight()) + 0.5f));
                                    constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                                    constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                                    constraintWidget.measured = true;
                                }
                            }
                        } else {
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                            measure(constraintWidget, dimensionBehaviour18, 0, dimensionBehaviour18, 0);
                            constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                            constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                        }
                    }
                } else {
                    int width2 = constraintWidget.getWidth();
                    if (dimensionBehaviour4 == dimensionBehaviour9) {
                        width2 = (constraintWidgetContainer.getWidth() - constraintAnchor2.mMargin) - constraintAnchor.mMargin;
                        dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    }
                    int height2 = constraintWidget.getHeight();
                    if (dimensionBehaviour8 == dimensionBehaviour9) {
                        int height3 = (constraintWidgetContainer.getHeight() - constraintAnchor4.mMargin) - constraintAnchor3.mMargin;
                        dimensionBehaviour8 = ConstraintWidget.DimensionBehaviour.FIXED;
                        i = height3;
                    } else {
                        i = height2;
                    }
                    measure(constraintWidget, dimensionBehaviour4, width2, dimensionBehaviour8, i);
                    constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                    constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                    constraintWidget.measured = true;
                }
            }
        }
    }

    public final void buildGraph() {
        ArrayList arrayList = this.mRuns;
        arrayList.clear();
        ConstraintWidgetContainer constraintWidgetContainer = this.mContainer;
        constraintWidgetContainer.horizontalRun.clear();
        constraintWidgetContainer.verticalRun.clear();
        arrayList.add(constraintWidgetContainer.horizontalRun);
        arrayList.add(constraintWidgetContainer.verticalRun);
        Iterator it = constraintWidgetContainer.mChildren.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (constraintWidget instanceof Guideline) {
                arrayList.add(new GuidelineReference(constraintWidget));
            } else {
                if (constraintWidget.isInHorizontalChain()) {
                    if (constraintWidget.horizontalChainRun == null) {
                        constraintWidget.horizontalChainRun = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.horizontalChainRun);
                } else {
                    arrayList.add(constraintWidget.horizontalRun);
                }
                if (constraintWidget.isInVerticalChain()) {
                    if (constraintWidget.verticalChainRun == null) {
                        constraintWidget.verticalChainRun = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.verticalChainRun);
                } else {
                    arrayList.add(constraintWidget.verticalRun);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((WidgetRun) it2.next()).clear();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it3.next();
            if (widgetRun.widget != constraintWidgetContainer) {
                widgetRun.apply();
            }
        }
        ArrayList arrayList2 = this.mGroups;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = this.container;
        findGroup(constraintWidgetContainer2.horizontalRun, 0, arrayList2);
        findGroup(constraintWidgetContainer2.verticalRun, 1, arrayList2);
        this.mNeedBuildGraph = false;
    }

    public final int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        ArrayList arrayList;
        int i2;
        int i3;
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        float f;
        long j;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        ArrayList arrayList2 = this.mGroups;
        int size = arrayList2.size();
        int i4 = 0;
        long j2 = 0;
        long j3 = 0;
        while (i4 < size) {
            WidgetRun widgetRun3 = ((RunGroup) arrayList2.get(i4)).firstRun;
            if (!(widgetRun3 instanceof ChainRun) ? !(i != 0 ? (widgetRun3 instanceof VerticalWidgetRun) : (widgetRun3 instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun3).orientation != i) {
                arrayList = arrayList2;
                i2 = size;
                i3 = i4;
            } else {
                if (i == 0) {
                    widgetRun = constraintWidgetContainer2.horizontalRun;
                } else {
                    widgetRun = constraintWidgetContainer2.verticalRun;
                }
                DependencyNode dependencyNode = widgetRun.start;
                if (i == 0) {
                    widgetRun2 = constraintWidgetContainer2.horizontalRun;
                } else {
                    widgetRun2 = constraintWidgetContainer2.verticalRun;
                }
                DependencyNode dependencyNode2 = widgetRun2.end;
                boolean contains = ((ArrayList) widgetRun3.start.targets).contains(dependencyNode);
                DependencyNode dependencyNode3 = widgetRun3.end;
                boolean contains2 = ((ArrayList) dependencyNode3.targets).contains(dependencyNode2);
                long wrapDimension = widgetRun3.getWrapDimension();
                DependencyNode dependencyNode4 = widgetRun3.start;
                if (contains && contains2) {
                    long traverseStart = RunGroup.traverseStart(dependencyNode4, j3);
                    long traverseEnd = RunGroup.traverseEnd(dependencyNode3, j3);
                    long j4 = traverseStart - wrapDimension;
                    int i5 = dependencyNode3.margin;
                    arrayList = arrayList2;
                    i2 = size;
                    i3 = i4;
                    if (j4 >= (-i5)) {
                        j4 += i5;
                    }
                    long j5 = dependencyNode4.margin;
                    long j6 = ((-traverseEnd) - wrapDimension) - j5;
                    if (j6 >= j5) {
                        j6 -= j5;
                    }
                    ConstraintWidget constraintWidget = widgetRun3.widget;
                    if (i == 0) {
                        f = constraintWidget.mHorizontalBiasPercent;
                    } else if (i == 1) {
                        f = constraintWidget.mVerticalBiasPercent;
                    } else {
                        constraintWidget.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j = (((float) j4) / (1.0f - f)) + (((float) j6) / f);
                    } else {
                        j = 0;
                    }
                    float f2 = (float) j;
                    j3 = (dependencyNode4.margin + ((((f2 * f) + 0.5f) + wrapDimension) + DependencyGraph$$ExternalSyntheticOutline0.m(1.0f, f, f2, 0.5f))) - dependencyNode3.margin;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    i3 = i4;
                    if (contains) {
                        j3 = Math.max(RunGroup.traverseStart(dependencyNode4, dependencyNode4.margin), dependencyNode4.margin + wrapDimension);
                    } else if (contains2) {
                        j3 = Math.max(-RunGroup.traverseEnd(dependencyNode3, dependencyNode3.margin), (-dependencyNode3.margin) + wrapDimension);
                    } else {
                        j3 = (widgetRun3.getWrapDimension() + dependencyNode4.margin) - dependencyNode3.margin;
                    }
                }
            }
            j2 = Math.max(j2, j3);
            i4 = i3 + 1;
            j3 = 0;
            arrayList2 = arrayList;
            constraintWidgetContainer2 = constraintWidgetContainer;
            size = i2;
        }
        return (int) j2;
    }

    public final void findGroup(WidgetRun widgetRun, int i, ArrayList arrayList) {
        DependencyNode dependencyNode;
        Iterator it = ((ArrayList) widgetRun.start.dependencies).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            dependencyNode = widgetRun.end;
            if (!hasNext) {
                break;
            }
            Dependency dependency = (Dependency) it.next();
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i, 0, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i, 0, arrayList, null);
            }
        }
        Iterator it2 = ((ArrayList) dependencyNode.dependencies).iterator();
        while (it2.hasNext()) {
            Dependency dependency2 = (Dependency) it2.next();
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i, 1, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i, 1, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((ArrayList) ((VerticalWidgetRun) widgetRun).baseline.dependencies).iterator();
            while (it3.hasNext()) {
                Dependency dependency3 = (Dependency) it3.next();
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i, 2, arrayList, null);
                }
            }
        }
    }

    public final void measure(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        boolean z;
        BasicMeasure.Measure measure = this.mMeasure;
        measure.horizontalBehavior = dimensionBehaviour;
        measure.verticalBehavior = dimensionBehaviour2;
        measure.horizontalDimension = i;
        measure.verticalDimension = i2;
        ((ConstraintLayout.Measurer) this.mMeasurer).measure(constraintWidget, measure);
        constraintWidget.setWidth(measure.measuredWidth);
        constraintWidget.setHeight(measure.measuredHeight);
        constraintWidget.hasBaseline = measure.measuredHasBaseline;
        int i3 = measure.measuredBaseline;
        constraintWidget.mBaselineDistance = i3;
        if (i3 > 0) {
            z = true;
        } else {
            z = false;
        }
        constraintWidget.hasBaseline = z;
    }

    public final void measureWidgets() {
        boolean z;
        BaselineDimensionDependency baselineDimensionDependency;
        Iterator it = this.container.mChildren.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (!constraintWidget.measured) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
                boolean z2 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = constraintWidget.mMatchConstraintDefaultWidth;
                int i2 = constraintWidget.mMatchConstraintDefaultHeight;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour != dimensionBehaviour3 && (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || i != 1)) {
                    z = false;
                } else {
                    z = true;
                }
                if (dimensionBehaviour2 == dimensionBehaviour3 || (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && i2 == 1)) {
                    z2 = true;
                }
                DimensionDependency dimensionDependency = constraintWidget.horizontalRun.dimension;
                boolean z3 = dimensionDependency.resolved;
                DimensionDependency dimensionDependency2 = constraintWidget.verticalRun.dimension;
                boolean z4 = dimensionDependency2.resolved;
                if (z3 && z4) {
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.FIXED;
                    measure(constraintWidget, dimensionBehaviour4, dimensionDependency.value, dimensionBehaviour4, dimensionDependency2.value);
                    constraintWidget.measured = true;
                } else if (z3 && z2) {
                    measure(constraintWidget, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency.value, dimensionBehaviour3, dimensionDependency2.value);
                    if (dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.verticalRun.dimension.wrapValue = constraintWidget.getHeight();
                    } else {
                        constraintWidget.verticalRun.dimension.resolve(constraintWidget.getHeight());
                        constraintWidget.measured = true;
                    }
                } else if (z4 && z) {
                    measure(constraintWidget, dimensionBehaviour3, dimensionDependency.value, ConstraintWidget.DimensionBehaviour.FIXED, dimensionDependency2.value);
                    if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        constraintWidget.horizontalRun.dimension.wrapValue = constraintWidget.getWidth();
                    } else {
                        constraintWidget.horizontalRun.dimension.resolve(constraintWidget.getWidth());
                        constraintWidget.measured = true;
                    }
                }
                if (constraintWidget.measured && (baselineDimensionDependency = constraintWidget.verticalRun.baselineDimension) != null) {
                    baselineDimensionDependency.resolve(constraintWidget.mBaselineDistance);
                }
            }
        }
    }
}
