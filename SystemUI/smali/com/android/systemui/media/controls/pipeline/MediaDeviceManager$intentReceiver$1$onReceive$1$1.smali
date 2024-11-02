.class public final Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$intentReceiver$1$onReceive$1$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->stop()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p2, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$start$1;

    .line 13
    .line 14
    invoke-direct {v0, p2, p0}, Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry$start$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager$Entry;Lcom/android/systemui/media/controls/pipeline/MediaDeviceManager;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
