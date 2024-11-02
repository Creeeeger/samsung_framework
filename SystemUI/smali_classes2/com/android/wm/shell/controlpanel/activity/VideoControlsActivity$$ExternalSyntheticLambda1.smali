.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

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
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const v1, 0x7f0a0889

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, 0x7f0a088b

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 17
    .line 18
    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 36
    .line 37
    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->closeOperation()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 44
    .line 45
    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
