.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getSidePadding(Landroidx/activity/ComponentActivity;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f07124b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getSidePadding(Landroidx/activity/ComponentActivity;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity$onCreate$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditDirectlyActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;->getBottomPadding(Landroidx/activity/ComponentActivity;Landroid/view/WindowInsets;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 51
    .line 52
    return-object p0
.end method
