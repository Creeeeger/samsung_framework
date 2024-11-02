.class public final Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CABBusinessContactRequest"
.end annotation


# static fields
.field public static final COMPLETE:Ljava/lang/String; = "complete"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final LINE_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final REQUEST_ID:Ljava/lang/String; = "request_id"

.field public static final SYNC_ACTION:Ljava/lang/String; = "sync_action"

.field public static final XDM_ACTION:Ljava/lang/String; = "xdm_action"

.field public static final XDM_CONTACT_ID:Ljava/lang/String; = "xdm_contact_id"

.field public static final XDM_CONTACT_POSITION:Ljava/lang/String; = "xdm_position"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "bsrequests"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;->CONTENT_URI:Landroid/net/Uri;

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

.method public static final buildGetUnsyncedDownloadRequests()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactRequest;->CONTENT_URI:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "pending"

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
