.class public Lcom/sec/ims/settings/GlobalSettingsLoader;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlobalSettingsLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGlobalSettings(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;I)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method

.method public static loadGlobalSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/settings/GlobalSettings;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettings;->getInstance(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object p0

    return-object p0
.end method
