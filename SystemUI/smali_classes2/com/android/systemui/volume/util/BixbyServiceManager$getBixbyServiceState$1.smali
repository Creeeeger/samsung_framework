.class public final Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

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
    iget-object v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceChecked:Z

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager$getBixbyServiceState$1;->this$0:Lcom/android/systemui/volume/util/BixbyServiceManager;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 15
    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyServiceOn:Z

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "isBixbyServiceOn="

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v1, "BixbyServiceManager"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/basic/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
