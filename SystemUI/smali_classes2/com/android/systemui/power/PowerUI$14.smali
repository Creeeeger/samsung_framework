.class public final Lcom/android/systemui/power/PowerUI$14;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$14;->this$0:Lcom/android/systemui/power/PowerUI;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$14;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mIsWirelessMisalignTask:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PowerUI"

    .line 8
    .line 9
    const-string v1, "mWirelessMisalignTask"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$14;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->removeChargerView()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$14;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->removeMisalignView()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
