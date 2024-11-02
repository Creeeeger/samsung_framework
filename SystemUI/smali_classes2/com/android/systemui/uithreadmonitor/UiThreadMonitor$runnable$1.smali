.class public final Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor$runnable$1;->this$0:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->DEBUG_LOG:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;->setAwake(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
