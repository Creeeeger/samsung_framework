.class final Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "dispose() : postAtFrontOfQueue, remove observer="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "VolumeUnsubscriber"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObservers$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object p0, p0, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber$dispose$1;->this$0:Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;->access$getObserver$p(Lcom/samsung/systemui/splugins/volume/VolumeUnsubscriber;)Lcom/samsung/systemui/splugins/volume/VolumeObserver;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
