.class public final Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView$bindViewModel$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/actionbar/SoundCraftActionBarView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string p1, "SoundCraft.SoundCraftActionBarViewModel"

    .line 13
    .line 14
    const-string v0, "onBackButtonClick"

    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;->qsPanelControllerLazy:Ldagger/Lazy;

    .line 20
    .line 21
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/systemui/qs/SecQSPanelController;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/actionbar/SoundCraftActionBarViewModel;->soundCraftAdapter:Ldagger/Lazy;

    .line 28
    .line 29
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mDetailRecord:Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 40
    .line 41
    if-eq v1, p0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->showDetail(Lcom/android/systemui/qs/SecQSPanelControllerBase$Record;Z)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_1
    return-void
.end method
