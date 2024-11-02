.class public final Lcom/sec/ims/settings/ImsSettings$ProfileTable;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final IMPI:Ljava/lang/String; = "impi"

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MDMN_TYPE:Ljava/lang/String; = "mdmn_type"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final PDN:Ljava/lang/String; = "pdn"

.field public static final SUPPORT_199_PROVISIONAL_RESPONSE:Ljava/lang/String; = "support_199_provisional_response"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.sec.ims.settings/profile"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->CONTENT_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
