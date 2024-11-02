.class public final synthetic Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, "BarController"

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setUnderneathQqs(Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->setUnderneathQqs(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_3
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->updateHeightMargins()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_4
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onUiModeChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_5
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onKnoxPolicyChanged()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_6
    check-cast p1, Lcom/android/systemui/qs/bar/BarItemImpl;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->destroy()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
