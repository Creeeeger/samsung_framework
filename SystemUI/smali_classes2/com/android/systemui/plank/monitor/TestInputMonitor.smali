.class public final Lcom/android/systemui/plank/monitor/TestInputMonitor;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final tag:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mInputHandler:Lcom/android/systemui/plank/monitor/TestInputHandler;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mTestInputEventReceiver:Lcom/android/systemui/plank/monitor/TestInputMonitor$TestInputEventReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/plank/monitor/TestInputMonitor$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/plank/monitor/TestInputMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "TestInputMonitor"

    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->tag:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/plank/monitor/TestInputMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method
