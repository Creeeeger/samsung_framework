.class public final Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

.field public final synthetic $ret:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeInfraMediatorImpl;Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$ret:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->this$0:Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$name:Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator$Values;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeInfraMediatorImpl$get$1;->$ret:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "="

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->p(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
