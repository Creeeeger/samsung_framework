.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

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
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$setupIsolatedButtons$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 2
    .line 3
    sget p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    const-class v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Landroid/util/Pair;

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->CHILD_ACTIVITY_REQUEST_CODE:I

    .line 27
    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
