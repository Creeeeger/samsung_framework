.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo v0, "video_controls_mode"

    .line 4
    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_2

    .line 10
    :pswitch_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 11
    .line 12
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$1:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne p0, v1, :cond_0

    .line 16
    .line 17
    sget-object p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->setupVideoControlsPanel()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :pswitch_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$1:I

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-ne p0, v1, :cond_1

    .line 46
    .line 47
    sget-object p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->setupVideoControlsPanel()V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 71
    .line 72
    iget p0, p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity$$ExternalSyntheticLambda2;->f$1:I

    .line 73
    .line 74
    if-nez p0, :cond_2

    .line 75
    .line 76
    sget-object p0, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->sVideoControlsActivity:Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_2
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/VideoControlsActivity;->setupVideoControlsPanel()V

    .line 97
    .line 98
    .line 99
    :goto_3
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
