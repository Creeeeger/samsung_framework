.class public Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$View;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAirplaneBackground:Landroid/widget/LinearLayout;

.field public mAirplaneButton:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public final mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/qp/SubscreenAirplaneController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 11
    .line 12
    iput-object p0, p1, Lcom/android/systemui/qp/SubscreenAirplaneController;->mAirplaneView:Lcom/android/systemui/qp/SubscreenQSControllerContract$View;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/systemui/qp/SubscreenAirplaneController;->registerReceiver(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->updateView(Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mSubscreenAirplaneController:Lcom/android/systemui/qp/SubscreenAirplaneController;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubscreenAirplaneController;->unRegisterReceiver(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a00aa

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    .line 14
    .line 15
    const v0, 0x7f0a00a8

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneBackground:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    .line 27
    .line 28
    new-instance v1, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    .line 37
    .line 38
    new-instance v0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView$$ExternalSyntheticLambda1;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final updateView(Z)V
    .locals 3

    .line 1
    const-string v0, "SASV updateView state: "

    .line 2
    .line 3
    const-string v1, "SubroomAirplaneModeSettingsView"

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneBackground:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v2, 0x7f081251

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f081255

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const p1, 0x7f13006f

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const p1, 0x7f13006e

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const v2, 0x7f130174

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    const-string v1, ","

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/systemui/qp/SubroomAirplaneModeSettingsView;->mAirplaneButton:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
