.class public final synthetic Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/model/KshData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/model/KshData;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/model/KshData;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/model/KshData;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 14
    .line 15
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;->getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Ljava/util/Optional;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/model/KshData;

    .line 21
    .line 22
    check-cast p1, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/model/KshData;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/model/KshData;->mKshDataUtils:Lcom/android/systemui/statusbar/model/KshDataUtils;

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;->getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
