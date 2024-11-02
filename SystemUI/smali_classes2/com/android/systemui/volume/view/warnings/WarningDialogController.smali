.class public final Lcom/android/systemui/volume/view/warnings/WarningDialogController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final displayManagerWrapper$delegate:Lkotlin/Lazy;

.field public final toastWrapper$delegate:Lkotlin/Lazy;

.field public final viewContext:Lcom/android/systemui/volume/view/context/ViewContext;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/context/ViewContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    .line 5
    .line 6
    new-instance p1, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;-><init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    new-instance p1, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;-><init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->toastWrapper$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final showVolumeCSD100WarningDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 60
    .line 61
    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 77
    .line 78
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 86
    .line 87
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    .line 103
    .line 104
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 112
    .line 113
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;

    .line 123
    .line 124
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 136
    .line 137
    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;->getWindow()Landroid/view/Window;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/16 v2, 0x50

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;->getWindow()Landroid/view/Window;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 174
    .line 175
    .line 176
    :cond_2
    :goto_0
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showVolumeLimiterDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 60
    .line 61
    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 77
    .line 78
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 86
    .line 87
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    .line 103
    .line 104
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 112
    .line 113
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;

    .line 123
    .line 124
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->toastWrapper$delegate:Lkotlin/Lazy;

    .line 136
    .line 137
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Lcom/android/systemui/volume/util/ToastWrapper;

    .line 142
    .line 143
    iget-object v2, v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 144
    .line 145
    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 148
    .line 149
    .line 150
    iput-object p0, v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;->toastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->initButtons()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 156
    .line 157
    .line 158
    :cond_1
    :goto_0
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showVolumeSafetyWarningDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    .line 51
    .line 52
    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 60
    .line 61
    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    .line 77
    .line 78
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 86
    .line 87
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    .line 97
    .line 98
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    .line 103
    .line 104
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 112
    .line 113
    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;

    .line 123
    .line 124
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore()Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    .line 136
    .line 137
    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;->getWindow()Landroid/view/Window;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const/16 v2, 0x50

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;->getWindow()Landroid/view/Window;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->initButtons()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_0
    return-void

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
