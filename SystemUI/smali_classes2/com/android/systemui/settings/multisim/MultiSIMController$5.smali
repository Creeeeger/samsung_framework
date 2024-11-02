.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$5;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "mMultiSimDataCrossSlotObserver onChange() "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 21
    .line 22
    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 23
    .line 24
    const-string v1, "MultiSIMController"

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
