.class public final Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final apiLogger:Lcom/android/systemui/plank/ApiLogger;

.field public final plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

.field public final protocol:Lcom/android/systemui/plank/protocol/Protocol;

.field public final testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plank/monitor/TestInputMonitor;Lcom/android/systemui/plank/protocol/Protocol;Lcom/android/systemui/plank/ApiLogger;Lcom/android/systemui/plank/command/PlankDispatcherFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->testInputMonitor:Lcom/android/systemui/plank/monitor/TestInputMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->protocol:Lcom/android/systemui/plank/protocol/Protocol;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->apiLogger:Lcom/android/systemui/plank/ApiLogger;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/plank/protocol/ProtocolManagerImpl;->plankDispatcherFactory:Lcom/android/systemui/plank/command/PlankDispatcherFactory;

    .line 11
    .line 12
    return-void
.end method
