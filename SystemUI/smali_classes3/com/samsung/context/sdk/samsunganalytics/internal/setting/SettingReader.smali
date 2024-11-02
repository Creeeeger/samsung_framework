.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final THREE_DEPTH_ENTITY_DELIMETER:Ljava/lang/String;

.field public final TWO_DEPTH_DELIMETER:Ljava/lang/String;

.field public final TWO_DEPTH_ENTITY_DELIMETER:Ljava/lang/String;

.field public final appPrefNames:Ljava/util/Set;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "SamsungAnalyticsPrefs"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "AppPrefs"

    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->appPrefNames:Ljava/util/Set;

    .line 25
    .line 26
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getKeyValueDLM()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->TWO_DEPTH_DELIMETER:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->TWO_DEPTH_ENTITY_DELIMETER:Ljava/lang/String;

    .line 39
    .line 40
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->getCollectionDLM()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->THREE_DEPTH_ENTITY_DELIMETER:Ljava/lang/String;

    .line 47
    .line 48
    return-void
.end method
