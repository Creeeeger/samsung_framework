.class final enum Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$2;
.super Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "CMD_B"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/model/SamsungAppShortcutsEnum;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Landroid/view/KeyboardShortcutInfo;
    .locals 2

    .line 1
    const-string p0, "app_shortcuts_command_b"

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/model/KshDataUtils;->getPackageInfoForSetting(Ljava/lang/String;)Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Landroid/view/KeyboardShortcutInfo;

    .line 8
    .line 9
    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Ljava/lang/CharSequence;

    .line 12
    .line 13
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Landroid/graphics/drawable/Icon;

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    const/high16 v1, 0x10000

    .line 20
    .line 21
    invoke-direct {p1, p2, p0, v0, v1}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
