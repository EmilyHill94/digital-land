---
title: "Step 1: Create your .csv files"
---

{{% contents %}}
- [Publish your developer contributions data]({{< ref "_index.md" >}})
- Step 1: Create your .csv files
- [Step 2: Update your developer contributions web page]({{< ref "update-your-developer-contributions-web-page.md" >}})
- [Step 3: Update the national register of developer contributions]({{< ref "update-the-national-register-of-developer-contributions.md" >}})
{{% /contents %}}

The Community Infrastructure Levy (CIL) regulations and National Planning Policy Framework require all local planning authorities to [publish their developer contributions data](https://www.gov.uk/guidance/planning-obligations#are-planning-obligation-contributions-required-by-local-planning-authorities-publically-available) on a regular basis and in an agreed format.

Local planning authorities that have received developer contributions must publish, at least annually, an Infrastructure Funding Statement summarising their developer contributions data. This guidance sets out the data format and approach that you should follow when publishing your data and Infrastructure Funding Statements.

The data format and Infrastructure Funding Statements will give policy makers better insights into how developer contributions are supporting new development and local infrastructure. We have designed the data format to cause as little disruption as possible to existing processes.

{{% inset-text %}}
Please share your feedback on this guidance by filling out our [feedback form](https://docs.google.com/forms/d/1pvblp8l4ODFmv91yyktArGaiskVnJgFcWDCYBBRgc2A) or by commenting on our [GitHub issues discussion board](https://github.com/digital-land/digital-land/labels/project%3Adeveloper-contributions).
{{% /inset-text %}}

## Make your data findable, useable and trustworthy

Developer contributions include section 106 planning obligations, CIL, section 278 agreements and any agreements that either secure funding towards new development, or provide infrastructure as part of any new development. The data on these has a wide range of current and potential uses, including:

* planning land and housing development
* creating new digital services
* giving community members insight into local development and how they can influence it

But for data to be useful it must be easy to find, use, understand and trust. Local planning authorities should ensure that their developer contributions data is all of these by following this specification for how to format, label and publish it. The following guidance gives a high-level overview of the data format and the publication process.

{{% inset-text %}}
Local authorities should continue to publish section 106 agreements on the planning register. Publishing your developer contributions data in this format will help you fill out your Infrastructure Funding Statement, but does not replace that requirement.
{{% /inset-text %}}

## Publishing developer contributions: 3 steps

Planning authorities must publish their developer contributions once a year but are encouraged to do so as frequently as they can so that datasets are up to date. (Those publishing with third-party software that can semi-automate the process might be able to publish in near real-time, while those publishing manually might choose to only publish quarterly.)

This guidance applies to the publication of developer contributions data going forward – you are not required to republish historical data so that it complies with this guidance.

Publishing is a 3 step process:

1. Create 3 developer contribution .csv files to store the data
2. Upload each of these files to your organisation’s website and give them a persistent URL, then clearly link to them from your developer contributions webpage
3. Update the national register of developer contributions on the Ministry of Housing, Communities and Local Government (MHCLG) website

{{% inset-text %}}
You may not be able or authorised to complete all steps. Each step identifies the skills and authority required to complete it.
{{% /inset-text %}}

### Step 1: Create your .csv files

{{% inset-text %}}
To complete step 1 you must be able to create or amend .csv files, for example by using spreadsheet software.
{{% /inset-text %}}

If you are a planning authority using third-party software to manage your developer contributions, ask your vendor if the software can export the data to .csv files as defined in this guidance. Otherwise, use the following instructions.

Developer contributions data must be entered in 3 separate .csv files. A .csv file (or comma separated value file) is a universally recognised file format for storing tabular data in plain text. Storing the data in 3 separate files rather than one file reduces duplication and makes the data easier to use and maintain.

We’ve created a .csv template for each of the 3 files:

* [developer agreements](/guidance/developer-contributions/developer-agreement_YYYYMMDD.csv)
* [developer agreement contributions](/guidance/developer-contributions/developer-agreement-contribution_YYYYMMDD.csv)
* [developer agreement transactions](/guidance/developer-contributions/developer-agreement-transaction_YYYYMMDD.csv)

If it helps, you can use the above example files and enter your developer contributions data. You must follow the guidelines below, then 'save as .csv file'. You can use software such as Microsoft Excel, Google Sheets or Apple Numbers, as long as they meet the requirements of this guidance.

Each of the .csv files must:

* be named using the convention specified in each section below
* contain certain column headers (written exactly as shown, in lowercase)
* include 1 row of data for each agreement, contribution or transaction (as relevant)
* only entries that conform to the constraints described below

[Find out more about creating a .csv file](http://w3c.github.io/csvw/primer/).

### Developer agreements<a name="agreement"></a>

A developer agreement is any legal document that secures contributions from a development for infrastructure or affordable housing (including section 106 planning obligations and section 278 agreements), or any demand notice for CIL.

Developer agreements must be listed in a .csv file named exactly as follows, but with the actual date you created the file instead of YYYYMMDD:

{{< tech-block >}}developer-agreement_YYYYMMDD.csv{{< /tech-block >}}

{{% inset-text %}}
Do not delete or overwrite old or superseded agreements.
{{% /inset-text %}}

#### Column headers:

{{% col-guidance name="developer-agreement" %}}
Create a unique identifier for the agreement. By ‘unique’ this means it should not be used for anything else in your organisation. (You could, for example, use the relevant planning application number appended with a suffix such as ‘-da’.)
{{% /col-guidance %}}

{{% col-guidance name="organisation" %}}
[Find your organisation in this list](https://github.com/communitiesuk/digital-land-data/blob/master/data/organisation.tsv) (in most cases this will be a local planning authority). All text must be in lower case, with no spaces. Norfolk’s local planning authority, for example, would be:

{{< tech-block >}}local-authority:nfk{{< /tech-block >}}
{{% /col-guidance %}}

{{% inset-text %}}
Read our [data principles](https://digital-land.github.io/guidance/developer-contributions/) for more information on dates.
{{% /inset-text %}}

{{% col-guidance name="entry-date" %}}
Enter the date that you record this data (for example today's date), in the format yyyy-mm-dd. For 1 February 2019, for example, you should enter 2019-02-01.
{{% /col-guidance %}}

{{% col-guidance name="start-date" %}}
For section 106 obligations, enter the date the agreement was ‘signed and sealed’. For CIL, enter the date the demand notice was issued.

If the original section 106 agreement or CIL demand notice is superseded by a new version (for example a deed of variation), enter the date on which the new version was agreed.

Enter the date in the same format  as the entry-date column.
{{% /col-guidance %}}

{{% col-guidance name="end-date" %}}
Leave this blank if this version of the section 106 agreement or CIL demand notice has not been superseded by a new one. If it has, enter the last day this version was in effect, in the same format as the entry-date column.
{{% /col-guidance %}}

{{% col-guidance name="planning-application" %}}
Enter the unique reference number for the planning application as it appears on the [Planning Portal](https://www.planningportal.co.uk/).
{{% /col-guidance %}}

{{% col-guidance name="document-url" %}}
Enter the web address that links directly to the actual agreement document or CIL demand notice.
{{% /col-guidance %}}

{{% col-guidance name="developer-agreement-classification" %}}
This is either ‘CIL’ (community investment levy), ‘S106’ (section 106 planning obligations) or 'S278' (section 278 agreements). More developer agreement classifications will gradually be added to the developer-agreement-classification.csv file, which MHCLG will maintain for your reference.
{{% /col-guidance %}}

***

### Developer agreement contributions<a name="contribution"></a>

Developer agreement contributions are the individual obligations or sums within an agreement, assigned to particular purposes such as affordable housing.

For CIL, the total sum should be split into separate developer agreement contributions with the contribution-purpose as either CIL, CIL administration, Neighbourhood CIL or as Mayoral CIL. If the CIL is being paid by instalments, each instalment should be recorded separately.

Developer agreement contributions must be listed exactly as follows, but with the actual date you created the file instead of YYYYMMDD:

{{< tech-block >}}developer-agreement-contribution_YYYYMMDD.csv{{< /tech-block >}}

#### Column headers:

{{% col-guidance name="developer-agreement-contribution" %}}
Create a unique identifier for the contribution. If the identifier contains the developer-agreement number it will be easier to quickly identify the contribution as related to the agreement. If the developer-agreement number is ROC100, for example, the developer-contribution could be ROC100-1A.
{{% /col-guidance %}}

{{% col-guidance name="developer-agreement" %}}
Enter the unique identifier you’ve created for the agreement.
{{% /col-guidance %}}

{{% col-guidance name="contribution-purpose" %}}
Enter the ID for the intended purpose of the developer contribution. This is found in the first column of the developer-contribution-purpose.csv file, which will be held by MHCLG for your reference.
{{% /col-guidance %}}

{{% col-guidance name="amount" %}}
Enter the agreed, secured contribution amount, in pounds and pence but without a currency symbol or commas (for example `100000.00`).
{{% /col-guidance %}}

{{% col-guidance name="units" %}}
If the developer has agreed a non-financial contribution you should quantify that here (eg enter 100 if that many affordable housing units have been promised, 2 for 2 public playgrounds etc).

{{% inset-text %}}
Read our [data principles](https://digital-land.github.io/guidance/developer-contributions/) for more information on dates.
{{% /inset-text %}}

{{% /col-guidance %}}

{{% col-guidance name="entry-date" %}}
Enter the date that you record this data (for example today's date), in the format yyyy-mm-dd. For 1 February 2019, for example, you should enter 2019-02-01.
{{% /col-guidance %}}

{{% col-guidance name="start-date" %}}
For section 106 obligations, enter the date the agreement was ‘signed and sealed’. For CIL, enter the date the demand notice was issued.

If the original section 106 agreement or CIL demand notice is superseded by a new version (for example a deed of variation), enter the date on which the new version was agreed.

Enter the date in the same format  as the entry-date column.

{{% /col-guidance %}}

{{% col-guidance name="end-date" %}}
Leave this blank if this version of the section 106 agreement or CIL demand notice has not been superseded by a new one. If it has, enter the last day this version was in effect, in the same format as the entry-date column.
{{% /col-guidance %}}

***

### Developer agreement transactions<a name="transaction"></a>

Developer agreement transactions must be listed in a .csv file exactly as follows, but with the actual date you created the file instead of YYYYMMDD:

{{< tech-block >}}developer-agreement-transaction_YYYYMMDD.csv{{< /tech-block >}}

#### Column headers:

{{% col-guidance name="developer-agreement-transaction" %}}
Create a unique identifier for the transaction. If the identifier contains the developer-agreement number it will be easier to quickly identify the contribution as related to the agreement. If the developer-agreement number is ROC100, for example, the developer-agreement transaction could be ROC100-TR1.
{{% /col-guidance %}}

{{% col-guidance name="developer-agreement-contribution" %}}
Enter the unique identifier you created for the contribution.
{{% /col-guidance %}}

{{% col-guidance name="contribution-funding-status" %}}

Enter one of the following to indicate what stage the funding for the contribution is currently in:

* ‘secured’: for section 106 planning obligations, the trigger clauses associated with the contribution have been met, meaning the developer is now required to pay all or part of the contribution. For CIL, the demand notice has been issued and the developer is now required to pay all or part of their CIL liability.
* ‘received’: the developer has paid all or part of the money due to the local planning authority
* ‘allocated’: the received money has been allocated to a team within the local planning authority, who will spend the money
* ‘transferred’: the received money has been transferred to an organisation outside the planning authority (for example another local authority or Transport for London), who will spend the money
* ‘spent’: the received money has been spent on the purpose specified in the section 106 agreement or spent in accordance with the CIL infrastructure list
* ‘returned’: the received money (or a portion of it) has been returned to the developer

If more than one status applies (for example if some money was spent and some returned), please create a separate row for each status. Fill in each row with all other fields.

{{% /col-guidance %}}

{{% col-guidance name="amount" %}}
Enter the amount of money for each funding status.

Enter the amount as a numeric value eg £10,000 would be entered as `10000.00`

{{% /col-guidance %}}

{{% col-guidance name="units" %}}
If the developer has agreed a non-financial contribution you should quantify how much of that commitment has been met for this transaction if you can (for example enter 50 if 100 affordable housing units were committed and 50 have been delivered).
{{% /col-guidance %}}

{{% inset-text %}}
Read our [data principles](https://digital-land.github.io/guidance/developer-contributions/) for more information on dates.
{{% /inset-text %}}

{{% col-guidance name="entry-date" %}}
Enter the date that you record this data (for example today's date), in the format yyyy-mm-dd. For 1 February 2019, for example, you should enter 2019-02-01.
{{% /col-guidance %}}

{{% col-guidance name="start-date" %}}
Enter the date on which this contribution status came into effect (for example the date that money was transferred or allocated), in the same format as the entry-date column.
{{% /col-guidance %}}

{{% col-guidance name="end-date" %}}
Leave this blank if this version of the section 106 agreement or CIL demand notice hasn’t been superseded by a new one. If it has, enter the last day this version was in effect, in the same format as the entry-date column.
{{% /col-guidance %}}

{{% pagination-component %}}
{{% pagination-prev href="_index.md" text="Publish your developer contributions data" %}}
{{% pagination-next href="update-your-developer-contributions-web-page.md" text="Step 2: Update your developer contributions web page" %}}
{{% /pagination-component %}}