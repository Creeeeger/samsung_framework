.class public final synthetic Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFolderOpened:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    :goto_1
    return p0

    .line 27
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    .line 30
    .line 31
    return p0

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
