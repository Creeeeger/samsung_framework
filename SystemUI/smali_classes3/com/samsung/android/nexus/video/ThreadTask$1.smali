.class Lcom/samsung/android/nexus/video/ThreadTask$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/ThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/ThreadTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/ThreadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/ThreadTask$1;->this$0:Lcom/samsung/android/nexus/video/ThreadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/nexus/video/ThreadTask$1;->this$0:Lcom/samsung/android/nexus/video/ThreadTask;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mResult:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/ThreadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
