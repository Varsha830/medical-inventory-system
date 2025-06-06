<h1>medical-inventory-system</h1>
<p>SQL-based system for managing medical inventory, including medicines, categories, generics, manufacturers, and stock tracking.</p>
<hr />

<h2>📁 Database Schema</h2>
<p>The project includes the following tables:</p>
<ul>
  <li><strong>medicines</strong></li>
  <li><strong>generics</strong></li>
  <li><strong>categories</strong></li>
  <li><strong>manufacturers</strong></li>
</ul>
<p>Each table is linked using appropriate <strong>foreign key relations</strong> for seamless JOIN operations and efficient querying.</p>

<hr />

<h2>🗃️ Tables and Description</h2>
<table border="1">
  <thead>
    <tr>
      <th>Table Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>medicines</code></td>
      <td>Stores details of individual medicines including stock, price, expiry, and whether a prescription is required.</td>
    </tr>
    <tr>
      <td><code>generics</code></td>
      <td>Contains general drug names, side effects, and dosage information.</td>
    </tr>
    <tr>
      <td><code>categories</code></td>
      <td>Defines the category of medicines like Antibiotic, Antacid, etc.</td>
    </tr>
    <tr>
      <td><code>manufacturers</code></td>
      <td>Includes manufacturer names and addresses.</td>
    </tr>
  </tbody>
</table>

<hr />

<h2>💾 SQL Features Used</h2>
<ul>
  <li><strong>DDL:</strong> CREATE, USE, INSERT</li>
  <li><strong>DML:</strong> SELECT, WHERE, ORDER BY, LIMIT</li>
  <li><strong>Joins:</strong> INNER JOIN for combining related data</li>
  <li><strong>Filtering and Sorting:</strong> Based on conditions like stock, expiry date, price, and location</li>
</ul>

<hr />

<h2>🔍 Sample Queries</h2>

<h3>✅ Basic Queries</h3>
<ul>
  <li>List medicines that don’t require prescriptions.</li>
  <li>Find medicines expiring before a certain date.</li>
  <li>Display low stock medicines with their prices.</li>
</ul>

<h3>🔗 Join-Based Queries</h3>
<ul>
  <li>Show medicines with their generic names and side effects.</li>
  <li>List each medicine's category and manufacturer.</li>
  <li>Display dosage and prescription requirement details.</li>
</ul>

<h3>📊 Filter & Sort Queries</h3>
<ul>
  <li>Top 5 most expensive medicines.</li>
  <li>Medicines by Gujarat-based manufacturers.</li>
  <li>Antibiotics currently in stock.</li>
</ul>

<hr />

<h2>🧪 How to Use</h2>
<ol>
  <li>Copy and run the SQL script in any MySQL environment (like MySQL Workbench, phpMyAdmin, or XAMPP).</li>
  <li>Start executing the sample queries for exploration and reporting.</li>
</ol>

<hr />

<h2>📌 Use Cases</h2>
<ul>
  <li>Pharmacy Inventory Systems</li>
  <li>HealthTech ERP Solutions</li>
  <li>Data Analysis for Drug Supply Chain</li>
  <li>Academic Learning Projects</li>
</ul>

<hr />

<h2>🛠️ Tools</h2>
<ul>
  <li><strong>Database:</strong> MySQL</li>
  <li><strong>Editor:</strong> MySQL Workbench / VS Code</li>
</ul>

<hr />

<h2>👩‍💻 Author</h2>
<p><strong>Varsha Maurya</strong><br>
Email: <a href="mailto:varshamaurya@gmail.com">varshamaurya@gmail.com</a><br>
LinkedIn: <a href="https://www.linkedin.com/in/varshamaurya600" target="_blank">linkedin.com/in/varshamaurya600</a></p>
