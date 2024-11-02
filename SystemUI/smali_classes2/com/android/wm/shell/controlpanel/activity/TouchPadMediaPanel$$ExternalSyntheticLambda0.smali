.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 8
    .line 9
    const p1, 0x7f0a008d

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->onClickButton(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 17
    .line 18
    const p1, 0x7f0a0088

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->onClickButton(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 26
    .line 27
    const p1, 0x7f0a0083

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->onClickButton(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    .line 35
    .line 36
    const p1, 0x7f0a008c

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->onClickButton(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
