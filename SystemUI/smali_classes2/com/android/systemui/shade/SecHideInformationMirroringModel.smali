.class public final Lcom/android/systemui/shade/SecHideInformationMirroringModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringModel;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final shouldHideInformation()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/SecHideInformationMirroringModel;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    .line 4
    .line 5
    const-string/jumbo v0, "smart_view_show_notification_on"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method
