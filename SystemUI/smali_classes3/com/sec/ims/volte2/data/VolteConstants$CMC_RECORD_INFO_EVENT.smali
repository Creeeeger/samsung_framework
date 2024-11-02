.class public Lcom/sec/ims/volte2/data/VolteConstants$CMC_RECORD_INFO_EVENT;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMC_RECORD_INFO_EVENT"
.end annotation


# static fields
.field public static final CMC_RECORD_EVENT_START:I = 0x1

.field public static final CMC_RECORD_EVENT_STOP_ERROR_UNKNOWN:I = 0x64

.field public static final CMC_RECORD_EVENT_STOP_MAX_DURATION_REACHED:I = 0x3

.field public static final CMC_RECORD_EVENT_STOP_MAX_FILESIZE_REACHED:I = 0x4

.field public static final CMC_RECORD_EVENT_STOP_NORMAL:I = 0x2

.field public static final CMC_RECORD_EVENT_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
