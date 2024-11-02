.class public final synthetic Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$7:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$2:Ljava/lang/CharSequence;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$3:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$4:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$6:Landroid/content/DialogInterface$OnClickListener;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$7:Landroid/view/View;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$1:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$2:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$3:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$4:Landroid/content/DialogInterface$OnClickListener;

    .line 10
    .line 11
    iget v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$5:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$6:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda5;->f$7:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const v7, 0x7f140560

    .line 22
    .line 23
    .line 24
    invoke-static {v7, p0}, Lcom/android/systemui/util/SystemUIDialogUtils;->createSystemUIDialogUtils(ILandroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    if-eqz v8, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x7f070186

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const/4 v10, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    const/4 v12, 0x0

    .line 57
    move-object v7, p0

    .line 58
    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 59
    .line 60
    .line 61
    :cond_0
    if-eqz v3, :cond_1

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    if-eqz v5, :cond_2

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 76
    .line 77
    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 90
    .line 91
    .line 92
    return-void
.end method
