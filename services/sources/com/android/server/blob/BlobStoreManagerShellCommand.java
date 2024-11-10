package com.android.server.blob;

import android.app.blob.BlobHandle;
import android.os.ShellCommand;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class BlobStoreManagerShellCommand extends ShellCommand {
    public final BlobStoreManagerService mService;

    public BlobStoreManagerShellCommand(BlobStoreManagerService blobStoreManagerService) {
        this.mService = blobStoreManagerService;
    }

    public int onCommand(String str) {
        if (str == null) {
            return handleDefaultCommands((String) null);
        }
        PrintWriter outPrintWriter = getOutPrintWriter();
        char c = 65535;
        switch (str.hashCode()) {
            case -1168531841:
                if (str.equals("delete-blob")) {
                    c = 0;
                    break;
                }
                break;
            case -971115831:
                if (str.equals("clear-all-sessions")) {
                    c = 1;
                    break;
                }
                break;
            case -258166326:
                if (str.equals("clear-all-blobs")) {
                    c = 2;
                    break;
                }
                break;
            case 712607671:
                if (str.equals("query-blob-existence")) {
                    c = 3;
                    break;
                }
                break;
            case 1861559962:
                if (str.equals("idle-maintenance")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return runDeleteBlob(outPrintWriter);
            case 1:
                return runClearAllSessions(outPrintWriter);
            case 2:
                return runClearAllBlobs(outPrintWriter);
            case 3:
                return runQueryBlobExistence(outPrintWriter);
            case 4:
                return runIdleMaintenance(outPrintWriter);
            default:
                return handleDefaultCommands(str);
        }
    }

    public final int runClearAllSessions(PrintWriter printWriter) {
        ParsedArgs parsedArgs = new ParsedArgs();
        parsedArgs.userId = -1;
        if (parseOptions(printWriter, parsedArgs) < 0) {
            return -1;
        }
        this.mService.runClearAllSessions(parsedArgs.userId);
        return 0;
    }

    public final int runClearAllBlobs(PrintWriter printWriter) {
        ParsedArgs parsedArgs = new ParsedArgs();
        parsedArgs.userId = -1;
        if (parseOptions(printWriter, parsedArgs) < 0) {
            return -1;
        }
        this.mService.runClearAllBlobs(parsedArgs.userId);
        return 0;
    }

    public final int runDeleteBlob(PrintWriter printWriter) {
        ParsedArgs parsedArgs = new ParsedArgs();
        if (parseOptions(printWriter, parsedArgs) < 0) {
            return -1;
        }
        this.mService.deleteBlob(parsedArgs.getBlobHandle(), parsedArgs.userId);
        return 0;
    }

    public final int runIdleMaintenance(PrintWriter printWriter) {
        this.mService.runIdleMaintenance();
        return 0;
    }

    public final int runQueryBlobExistence(PrintWriter printWriter) {
        ParsedArgs parsedArgs = new ParsedArgs();
        if (parseOptions(printWriter, parsedArgs) < 0) {
            return -1;
        }
        printWriter.println(this.mService.isBlobAvailable(parsedArgs.blobId, parsedArgs.userId) ? 1 : 0);
        return 0;
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("BlobStore service (blob_store) commands:");
        outPrintWriter.println("help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println();
        outPrintWriter.println("clear-all-sessions [-u | --user USER_ID]");
        outPrintWriter.println("    Remove all sessions.");
        outPrintWriter.println("    Options:");
        outPrintWriter.println("      -u or --user: specify which user's sessions to be removed.");
        outPrintWriter.println("                    If not specified, sessions in all users are removed.");
        outPrintWriter.println();
        outPrintWriter.println("clear-all-blobs [-u | --user USER_ID]");
        outPrintWriter.println("    Remove all blobs.");
        outPrintWriter.println("    Options:");
        outPrintWriter.println("      -u or --user: specify which user's blobs to be removed.");
        outPrintWriter.println("                    If not specified, blobs in all users are removed.");
        outPrintWriter.println("delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]");
        outPrintWriter.println("    Delete a blob.");
        outPrintWriter.println("    Options:");
        outPrintWriter.println("      -u or --user: specify which user's blobs to be removed;");
        outPrintWriter.println("                    If not specified, blobs in all users are removed.");
        outPrintWriter.println("      --digest: Base64 encoded digest of the blob to delete.");
        outPrintWriter.println("      --expiry: Expiry time of the blob to delete, in milliseconds.");
        outPrintWriter.println("      --label: Label of the blob to delete.");
        outPrintWriter.println("      --tag: Tag of the blob to delete.");
        outPrintWriter.println("idle-maintenance");
        outPrintWriter.println("    Run idle maintenance which takes care of removing stale data.");
        outPrintWriter.println("query-blob-existence [-b BLOB_ID]");
        outPrintWriter.println("    Prints 1 if blob exists, otherwise 0.");
        outPrintWriter.println();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0064, code lost:
    
        if (r0.equals("--label") == false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int parseOptions(java.io.PrintWriter r5, com.android.server.blob.BlobStoreManagerShellCommand.ParsedArgs r6) {
        /*
            r4 = this;
        L0:
            java.lang.String r0 = r4.getNextOption()
            r1 = 0
            if (r0 == 0) goto Ld0
            int r2 = r0.hashCode()
            r3 = -1
            switch(r2) {
                case -1620968108: goto L5e;
                case 1493: goto L53;
                case 1512: goto L48;
                case 43013626: goto L3d;
                case 1068100452: goto L32;
                case 1110854355: goto L27;
                case 1332867059: goto L1c;
                case 1333469547: goto L11;
                default: goto Lf;
            }
        Lf:
            r1 = r3
            goto L67
        L11:
            java.lang.String r1 = "--user"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L1a
            goto Lf
        L1a:
            r1 = 7
            goto L67
        L1c:
            java.lang.String r1 = "--algo"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L25
            goto Lf
        L25:
            r1 = 6
            goto L67
        L27:
            java.lang.String r1 = "--expiry"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L30
            goto Lf
        L30:
            r1 = 5
            goto L67
        L32:
            java.lang.String r1 = "--digest"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L3b
            goto Lf
        L3b:
            r1 = 4
            goto L67
        L3d:
            java.lang.String r1 = "--tag"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L46
            goto Lf
        L46:
            r1 = 3
            goto L67
        L48:
            java.lang.String r1 = "-u"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L51
            goto Lf
        L51:
            r1 = 2
            goto L67
        L53:
            java.lang.String r1 = "-b"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L5c
            goto Lf
        L5c:
            r1 = 1
            goto L67
        L5e:
            java.lang.String r2 = "--label"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L67
            goto Lf
        L67:
            switch(r1) {
                case 0: goto Lc8;
                case 1: goto Lbc;
                case 2: goto Lb0;
                case 3: goto La8;
                case 4: goto L98;
                case 5: goto L8c;
                case 6: goto L84;
                case 7: goto Lb0;
                default: goto L6a;
            }
        L6a:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Error: unknown option '"
            r4.append(r6)
            r4.append(r0)
            java.lang.String r6 = "'"
            r4.append(r6)
            java.lang.String r4 = r4.toString()
            r5.println(r4)
            return r3
        L84:
            java.lang.String r0 = r4.getNextArgRequired()
            r6.algorithm = r0
            goto L0
        L8c:
            java.lang.String r0 = r4.getNextArgRequired()
            long r0 = java.lang.Long.parseLong(r0)
            r6.expiryTimeMillis = r0
            goto L0
        L98:
            java.util.Base64$Decoder r0 = java.util.Base64.getDecoder()
            java.lang.String r1 = r4.getNextArgRequired()
            byte[] r0 = r0.decode(r1)
            r6.digest = r0
            goto L0
        La8:
            java.lang.String r0 = r4.getNextArgRequired()
            r6.tag = r0
            goto L0
        Lb0:
            java.lang.String r0 = r4.getNextArgRequired()
            int r0 = java.lang.Integer.parseInt(r0)
            r6.userId = r0
            goto L0
        Lbc:
            java.lang.String r0 = r4.getNextArgRequired()
            long r0 = java.lang.Long.parseLong(r0)
            r6.blobId = r0
            goto L0
        Lc8:
            java.lang.String r0 = r4.getNextArgRequired()
            r6.label = r0
            goto L0
        Ld0:
            int r4 = r6.userId
            r5 = -2
            if (r4 != r5) goto Ldb
            int r4 = android.app.ActivityManager.getCurrentUser()
            r6.userId = r4
        Ldb:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.blob.BlobStoreManagerShellCommand.parseOptions(java.io.PrintWriter, com.android.server.blob.BlobStoreManagerShellCommand$ParsedArgs):int");
    }

    /* loaded from: classes.dex */
    public class ParsedArgs {
        public String algorithm;
        public long blobId;
        public byte[] digest;
        public long expiryTimeMillis;
        public CharSequence label;
        public String tag;
        public int userId;

        public ParsedArgs() {
            this.userId = -2;
            this.algorithm = "SHA-256";
        }

        public BlobHandle getBlobHandle() {
            return BlobHandle.create(this.algorithm, this.digest, this.label, this.expiryTimeMillis, this.tag);
        }
    }
}
