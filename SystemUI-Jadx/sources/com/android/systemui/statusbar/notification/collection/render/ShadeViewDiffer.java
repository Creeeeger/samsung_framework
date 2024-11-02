package com.android.systemui.statusbar.notification.collection.render;

import android.os.Trace;
import android.view.View;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.core.graphics.PathParser$$ExternalSyntheticOutline0;
import androidx.core.provider.FontProvider$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.log.LogLevel;
import com.android.systemui.log.LogMessage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeViewDiffer {
    public final ShadeViewDifferLogger logger;
    public final Map nodes;
    public final ShadeNode rootNode;

    public ShadeViewDiffer(NodeController nodeController, ShadeViewDifferLogger shadeViewDifferLogger) {
        this.logger = shadeViewDifferLogger;
        ShadeNode shadeNode = new ShadeNode(nodeController);
        this.rootNode = shadeNode;
        Pair[] pairArr = {new Pair(nodeController, shadeNode)};
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(1));
        MapsKt__MapsKt.putAll(linkedHashMap, pairArr);
        this.nodes = linkedHashMap;
    }

    public static final void detachChildren$lambda$4$detachRecursively(Map map, ShadeViewDiffer shadeViewDiffer, ShadeNode shadeNode, Map map2) {
        LinkedHashMap linkedHashMap;
        boolean z;
        ShadeNode shadeNode2;
        boolean z2;
        boolean z3;
        String str;
        NodeSpec nodeSpec;
        ShadeNode shadeNode3 = shadeNode;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) map2;
        NodeSpec nodeSpec2 = (NodeSpec) linkedHashMap2.get(shadeNode3.controller);
        NodeController nodeController = shadeNode3.controller;
        boolean z4 = true;
        int childCount = nodeController.getChildCount() - 1;
        while (-1 < childCount) {
            ShadeNode shadeNode4 = (ShadeNode) ((LinkedHashMap) map).get(nodeController.getChildAt(childCount));
            if (shadeNode4 != null) {
                NodeController nodeController2 = shadeNode4.controller;
                NodeSpec nodeSpec3 = (NodeSpec) linkedHashMap2.get(nodeController2);
                shadeViewDiffer.getClass();
                if (nodeSpec3 != null && (nodeSpec = ((NodeSpecImpl) nodeSpec3).parent) != null) {
                    shadeNode2 = shadeViewDiffer.getNode(nodeSpec);
                } else {
                    shadeNode2 = null;
                }
                if (!Intrinsics.areEqual(shadeNode2, shadeNode3)) {
                    if (shadeNode2 == null) {
                        z2 = z4;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        shadeViewDiffer.nodes.remove(nodeController2);
                    }
                    if (z2 && nodeSpec2 == null && nodeController2.offerToKeepInParentForAnimation()) {
                        String label = shadeNode4.getLabel();
                        String label2 = shadeNode.getLabel();
                        ShadeViewDifferLogger shadeViewDifferLogger = shadeViewDiffer.logger;
                        shadeViewDifferLogger.getClass();
                        LogLevel logLevel = LogLevel.DEBUG;
                        ShadeViewDifferLogger$logSkipDetachingChild$2 shadeViewDifferLogger$logSkipDetachingChild$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logSkipDetachingChild$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                LogMessage logMessage = (LogMessage) obj;
                                String str1 = logMessage.getStr1();
                                String str2 = logMessage.getStr2();
                                return KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Skip detaching ", str1, " from ", str2, " isTransfer="), logMessage.getBool1(), " isParentRemoved=", logMessage.getBool2());
                            }
                        };
                        LogBuffer logBuffer = shadeViewDifferLogger.buffer;
                        linkedHashMap = linkedHashMap2;
                        LogMessage obtain = logBuffer.obtain("NotifViewManager", logLevel, shadeViewDifferLogger$logSkipDetachingChild$2, null);
                        obtain.setStr1(label);
                        obtain.setStr2(label2);
                        obtain.setBool1(!z2);
                        z = true;
                        obtain.setBool2(true);
                        logBuffer.commit(obtain);
                    } else {
                        linkedHashMap = linkedHashMap2;
                        z = z4;
                        ShadeViewDifferLogger shadeViewDifferLogger2 = shadeViewDiffer.logger;
                        String label3 = shadeNode4.getLabel();
                        boolean z5 = !z2;
                        if (nodeSpec2 == null) {
                            z3 = z;
                        } else {
                            z3 = false;
                        }
                        String label4 = shadeNode.getLabel();
                        if (shadeNode2 != null) {
                            str = shadeNode2.getLabel();
                        } else {
                            str = null;
                        }
                        shadeViewDifferLogger2.logDetachingChild(label3, label4, str, z5, z3);
                        nodeController.removeChild(nodeController2, z5);
                        nodeController2.onViewRemoved();
                        shadeNode4.parent = null;
                    }
                } else {
                    linkedHashMap = linkedHashMap2;
                    z = z4;
                }
                if (nodeController2.getChildCount() > 0) {
                    detachChildren$lambda$4$detachRecursively(map, shadeViewDiffer, shadeNode4, map2);
                }
            } else {
                linkedHashMap = linkedHashMap2;
                z = z4;
            }
            childCount--;
            shadeNode3 = shadeNode;
            z4 = z;
            linkedHashMap2 = linkedHashMap;
        }
    }

    public static void registerNodes(NodeSpec nodeSpec, Map map) {
        NodeSpecImpl nodeSpecImpl = (NodeSpecImpl) nodeSpec;
        if (!map.containsKey(nodeSpecImpl.controller)) {
            map.put(nodeSpecImpl.controller, nodeSpec);
            ArrayList arrayList = (ArrayList) nodeSpecImpl.children;
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    registerNodes((NodeSpec) it.next(), map);
                }
                return;
            }
            return;
        }
        throw new DuplicateNodeException(PathParser$$ExternalSyntheticOutline0.m("Node ", nodeSpecImpl.controller.getNodeLabel(), " appears more than once"));
    }

    public final void applySpec(NodeSpecImpl nodeSpecImpl) {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        NodeController nodeController = nodeSpecImpl.controller;
        ShadeNode shadeNode = this.rootNode;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "ShadeViewDiffer.applySpec");
            try {
                Map treeToMap = treeToMap(nodeSpecImpl);
                if (Intrinsics.areEqual(nodeController, shadeNode.controller)) {
                    detachChildren(shadeNode, treeToMap);
                    attachChildren(shadeNode, treeToMap);
                    Unit unit = Unit.INSTANCE;
                    return;
                } else {
                    throw new IllegalArgumentException("Tree root " + nodeController.getNodeLabel() + " does not match own root at " + shadeNode.getLabel());
                }
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Map treeToMap2 = treeToMap(nodeSpecImpl);
        if (Intrinsics.areEqual(nodeController, shadeNode.controller)) {
            detachChildren(shadeNode, treeToMap2);
            attachChildren(shadeNode, treeToMap2);
            return;
        }
        throw new IllegalArgumentException(FontProvider$$ExternalSyntheticOutline0.m("Tree root ", nodeController.getNodeLabel(), " does not match own root at ", shadeNode.getLabel()));
    }

    public final void attachChildren(ShadeNode shadeNode, Map map) {
        int i;
        NodeSpec nodeSpec;
        long j;
        int i2;
        NodeSpec nodeSpec2;
        String str;
        ShadeViewDiffer shadeViewDiffer = this;
        long j2 = 4096;
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        int i3 = 0;
        ShadeViewDifferLogger shadeViewDifferLogger = shadeViewDiffer.logger;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "attachChildren");
            try {
                NodeController nodeController = shadeNode.controller;
                NodeController nodeController2 = shadeNode.controller;
                try {
                    Object obj = ((LinkedHashMap) map).get(nodeController);
                    if (obj != null) {
                        Iterator it = ((ArrayList) ((NodeSpecImpl) ((NodeSpec) obj)).children).iterator();
                        while (it.hasNext()) {
                            int i4 = i3 + 1;
                            NodeSpec nodeSpec3 = (NodeSpec) it.next();
                            View childAt = nodeController2.getChildAt(i3);
                            ShadeNode node = shadeViewDiffer.getNode(nodeSpec3);
                            NodeController nodeController3 = node.controller;
                            Iterator it2 = it;
                            if (!Intrinsics.areEqual(nodeController3.getView(), childAt)) {
                                if (nodeController3.removeFromParentIfKeptForAnimation()) {
                                    shadeViewDiffer.logger.logDetachingChild(node.getLabel(), null, null, false, true);
                                }
                                ShadeNode shadeNode2 = node.parent;
                                if (shadeNode2 == null) {
                                    String label = node.getLabel();
                                    String label2 = shadeNode.getLabel();
                                    shadeViewDifferLogger.getClass();
                                    i2 = i4;
                                    LogLevel logLevel = LogLevel.DEBUG;
                                    ShadeViewDifferLogger$logAttachingChild$2 shadeViewDifferLogger$logAttachingChild$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logAttachingChild$2
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj2) {
                                            LogMessage logMessage = (LogMessage) obj2;
                                            String str1 = logMessage.getStr1();
                                            String str2 = logMessage.getStr2();
                                            int int1 = logMessage.getInt1();
                                            StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Attaching view ", str1, " to ", str2, " at index ");
                                            m.append(int1);
                                            return m.toString();
                                        }
                                    };
                                    LogBuffer logBuffer = shadeViewDifferLogger.buffer;
                                    nodeSpec2 = nodeSpec3;
                                    LogMessage obtain = logBuffer.obtain("NotifViewManager", logLevel, shadeViewDifferLogger$logAttachingChild$2, null);
                                    obtain.setStr1(label);
                                    obtain.setStr2(label2);
                                    obtain.setInt1(i3);
                                    logBuffer.commit(obtain);
                                    nodeController2.addChildAt(nodeController3, i3);
                                    nodeController3.onViewAdded();
                                    node.parent = shadeNode;
                                } else {
                                    i2 = i4;
                                    nodeSpec2 = nodeSpec3;
                                    if (Intrinsics.areEqual(shadeNode2, shadeNode)) {
                                        String label3 = node.getLabel();
                                        String label4 = shadeNode.getLabel();
                                        shadeViewDifferLogger.getClass();
                                        LogLevel logLevel2 = LogLevel.DEBUG;
                                        ShadeViewDifferLogger$logMovingChild$2 shadeViewDifferLogger$logMovingChild$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logMovingChild$2
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj2) {
                                                LogMessage logMessage = (LogMessage) obj2;
                                                String str1 = logMessage.getStr1();
                                                String str2 = logMessage.getStr2();
                                                int int1 = logMessage.getInt1();
                                                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Moving child view ", str1, " in ", str2, " to index ");
                                                m.append(int1);
                                                return m.toString();
                                            }
                                        };
                                        LogBuffer logBuffer2 = shadeViewDifferLogger.buffer;
                                        LogMessage obtain2 = logBuffer2.obtain("NotifViewManager", logLevel2, shadeViewDifferLogger$logMovingChild$2, null);
                                        obtain2.setStr1(label3);
                                        obtain2.setStr2(label4);
                                        obtain2.setInt1(i3);
                                        logBuffer2.commit(obtain2);
                                        nodeController2.moveChildTo(nodeController3, i3);
                                        nodeController3.onViewMoved();
                                    } else {
                                        String label5 = node.getLabel();
                                        String label6 = shadeNode.getLabel();
                                        ShadeNode shadeNode3 = node.parent;
                                        if (shadeNode3 != null) {
                                            str = shadeNode3.getLabel();
                                        } else {
                                            str = null;
                                        }
                                        throw new IllegalStateException("Child " + label5 + " should have parent " + label6 + " but is actually " + str);
                                    }
                                }
                            } else {
                                i2 = i4;
                                nodeSpec2 = nodeSpec3;
                            }
                            nodeController3.resetKeepInParentForAnimation();
                            if (!((ArrayList) ((NodeSpecImpl) nodeSpec2).children).isEmpty()) {
                                shadeViewDiffer = this;
                                shadeViewDiffer.attachChildren(node, map);
                            } else {
                                shadeViewDiffer = this;
                            }
                            j2 = 4096;
                            it = it2;
                            i3 = i2;
                        }
                        Unit unit = Unit.INSTANCE;
                        Trace.traceEnd(4096L);
                        return;
                    }
                    throw new IllegalStateException("Required value was null.".toString());
                } catch (Throwable th) {
                    th = th;
                    j = 4096;
                    Trace.traceEnd(j);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                j = j2;
            }
        } else {
            Object obj2 = ((LinkedHashMap) map).get(shadeNode.controller);
            if (obj2 != null) {
                Iterator it3 = ((ArrayList) ((NodeSpecImpl) ((NodeSpec) obj2)).children).iterator();
                while (it3.hasNext()) {
                    int i5 = i3 + 1;
                    NodeSpec nodeSpec4 = (NodeSpec) it3.next();
                    NodeController nodeController4 = shadeNode.controller;
                    View childAt2 = nodeController4.getChildAt(i3);
                    ShadeNode node2 = shadeViewDiffer.getNode(nodeSpec4);
                    NodeController nodeController5 = node2.controller;
                    Iterator it4 = it3;
                    if (!Intrinsics.areEqual(nodeController5.getView(), childAt2)) {
                        if (nodeController5.removeFromParentIfKeptForAnimation()) {
                            shadeViewDiffer.logger.logDetachingChild(node2.getLabel(), null, null, false, true);
                        }
                        ShadeNode shadeNode4 = node2.parent;
                        if (shadeNode4 == null) {
                            String label7 = node2.getLabel();
                            String label8 = shadeNode.getLabel();
                            shadeViewDifferLogger.getClass();
                            i = i5;
                            LogLevel logLevel3 = LogLevel.DEBUG;
                            ShadeViewDifferLogger$logAttachingChild$2 shadeViewDifferLogger$logAttachingChild$22 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logAttachingChild$2
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj22) {
                                    LogMessage logMessage = (LogMessage) obj22;
                                    String str1 = logMessage.getStr1();
                                    String str2 = logMessage.getStr2();
                                    int int1 = logMessage.getInt1();
                                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Attaching view ", str1, " to ", str2, " at index ");
                                    m.append(int1);
                                    return m.toString();
                                }
                            };
                            LogBuffer logBuffer3 = shadeViewDifferLogger.buffer;
                            nodeSpec = nodeSpec4;
                            LogMessage obtain3 = logBuffer3.obtain("NotifViewManager", logLevel3, shadeViewDifferLogger$logAttachingChild$22, null);
                            obtain3.setStr1(label7);
                            obtain3.setStr2(label8);
                            obtain3.setInt1(i3);
                            logBuffer3.commit(obtain3);
                            nodeController4.addChildAt(nodeController5, i3);
                            nodeController5.onViewAdded();
                            node2.parent = shadeNode;
                        } else {
                            i = i5;
                            nodeSpec = nodeSpec4;
                            if (Intrinsics.areEqual(shadeNode4, shadeNode)) {
                                String label9 = node2.getLabel();
                                String label10 = shadeNode.getLabel();
                                shadeViewDifferLogger.getClass();
                                LogLevel logLevel4 = LogLevel.DEBUG;
                                ShadeViewDifferLogger$logMovingChild$2 shadeViewDifferLogger$logMovingChild$22 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logMovingChild$2
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj22) {
                                        LogMessage logMessage = (LogMessage) obj22;
                                        String str1 = logMessage.getStr1();
                                        String str2 = logMessage.getStr2();
                                        int int1 = logMessage.getInt1();
                                        StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Moving child view ", str1, " in ", str2, " to index ");
                                        m.append(int1);
                                        return m.toString();
                                    }
                                };
                                LogBuffer logBuffer4 = shadeViewDifferLogger.buffer;
                                LogMessage obtain4 = logBuffer4.obtain("NotifViewManager", logLevel4, shadeViewDifferLogger$logMovingChild$22, null);
                                obtain4.setStr1(label9);
                                obtain4.setStr2(label10);
                                obtain4.setInt1(i3);
                                logBuffer4.commit(obtain4);
                                nodeController4.moveChildTo(nodeController5, i3);
                                nodeController5.onViewMoved();
                            } else {
                                String str2 = null;
                                String label11 = node2.getLabel();
                                String label12 = shadeNode.getLabel();
                                ShadeNode shadeNode5 = node2.parent;
                                if (shadeNode5 != null) {
                                    str2 = shadeNode5.getLabel();
                                }
                                StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("Child ", label11, " should have parent ", label12, " but is actually ");
                                m.append(str2);
                                throw new IllegalStateException(m.toString());
                            }
                        }
                    } else {
                        i = i5;
                        nodeSpec = nodeSpec4;
                    }
                    nodeController5.resetKeepInParentForAnimation();
                    if (!((ArrayList) ((NodeSpecImpl) nodeSpec).children).isEmpty()) {
                        shadeViewDiffer = this;
                        shadeViewDiffer.attachChildren(node2, map);
                    } else {
                        shadeViewDiffer = this;
                    }
                    it3 = it4;
                    i3 = i;
                }
                return;
            }
            throw new IllegalStateException("Required value was null.".toString());
        }
    }

    public final void detachChildren(ShadeNode shadeNode, Map map) {
        boolean isTagEnabled = Trace.isTagEnabled(4096L);
        Map map2 = this.nodes;
        int i = 16;
        if (isTagEnabled) {
            Trace.traceBegin(4096L, "detachChildren");
            try {
                Collection values = ((LinkedHashMap) map2).values();
                int mapCapacity = MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(values, 10));
                if (mapCapacity >= 16) {
                    i = mapCapacity;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(i);
                for (Object obj : values) {
                    linkedHashMap.put(((ShadeNode) obj).controller.getView(), obj);
                }
                detachChildren$lambda$4$detachRecursively(linkedHashMap, this, shadeNode, map);
                Unit unit = Unit.INSTANCE;
                return;
            } finally {
                Trace.traceEnd(4096L);
            }
        }
        Collection values2 = ((LinkedHashMap) map2).values();
        int mapCapacity2 = MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(values2, 10));
        if (mapCapacity2 >= 16) {
            i = mapCapacity2;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(i);
        for (Object obj2 : values2) {
            linkedHashMap2.put(((ShadeNode) obj2).controller.getView(), obj2);
        }
        detachChildren$lambda$4$detachRecursively(linkedHashMap2, this, shadeNode, map);
    }

    public final ShadeNode getNode(NodeSpec nodeSpec) {
        Map map = this.nodes;
        ShadeNode shadeNode = (ShadeNode) ((LinkedHashMap) map).get(((NodeSpecImpl) nodeSpec).controller);
        if (shadeNode == null) {
            ShadeNode shadeNode2 = new ShadeNode(((NodeSpecImpl) nodeSpec).controller);
            map.put(shadeNode2.controller, shadeNode2);
            return shadeNode2;
        }
        return shadeNode;
    }

    public final Map treeToMap(NodeSpecImpl nodeSpecImpl) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            registerNodes(nodeSpecImpl, linkedHashMap);
            return linkedHashMap;
        } catch (DuplicateNodeException e) {
            ShadeViewDifferLogger shadeViewDifferLogger = this.logger;
            shadeViewDifferLogger.getClass();
            LogLevel logLevel = LogLevel.ERROR;
            ShadeViewDifferLogger$logDuplicateNodeInTree$2 shadeViewDifferLogger$logDuplicateNodeInTree$2 = new Function1() { // from class: com.android.systemui.statusbar.notification.collection.render.ShadeViewDifferLogger$logDuplicateNodeInTree$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    LogMessage logMessage = (LogMessage) obj;
                    return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(logMessage.getStr1(), " when mapping tree: ", logMessage.getStr2());
                }
            };
            LogBuffer logBuffer = shadeViewDifferLogger.buffer;
            LogMessage obtain = logBuffer.obtain("NotifViewManager", logLevel, shadeViewDifferLogger$logDuplicateNodeInTree$2, null);
            obtain.setStr1(e.toString());
            StringBuilder sb = new StringBuilder();
            NodeControllerKt.treeSpecToStrHelper(nodeSpecImpl, sb, "");
            obtain.setStr2(sb.toString());
            logBuffer.commit(obtain);
            throw e;
        }
    }
}
