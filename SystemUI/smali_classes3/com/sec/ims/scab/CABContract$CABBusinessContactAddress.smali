.class public final Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CABBusinessContactAddress"
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final FORMATTED_ADDRESS:Ljava/lang/String; = "formatted_address"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final POSTCODE:Ljava/lang/String; = "postcode"

.field public static final PREF:Ljava/lang/String; = "preference"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STREET:Ljava/lang/String; = "street"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "addresses"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
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

.method public static final buildBusinessContactAddressesUri()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "contact_addresses"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final buildBusinessContactAddressesUriByContact(J)Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "contact_addresses"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final buildBusinessContactAddressesUriByNotify(J)Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "notify_addresses"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
